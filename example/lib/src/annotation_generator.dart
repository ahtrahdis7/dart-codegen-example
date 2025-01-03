import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';

class ConfigGenerator extends GeneratorForAnnotation<Config> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    String release_key = annotation.read('key').stringValue;
    release_key =
        release_key == '' ? camelToSnakeCase(element.name) : release_key;

    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        'The @GenerateConfig annotation can only be applied to classes.',
        element: element,
      );
    }

    final classElement = element;

    // Begin the generated output
    final buffer = StringBuffer();

    // import parent package
    // print(buildStep.packageConfig);

    buffer.writeln("import 'complex_source.dart';");
    buffer.writeln("import 'library_source.dart';");
    buffer.writeln("");
    buffer.writeln("");
    buffer.writeln(
        'class _\$${classElement.name}Impl implements ${classElement.name} {');
    buffer.writeln('  final Config config;');
    buffer.writeln('  _\$${classElement.name}Impl(this.config);');

    // element level generation
    for (final accessor in classElement.accessors.where((f) => !f.isStatic)) {
      final nestedAnnotation = _getNestedAnnotation(accessor);

      print('check1');
      if (nestedAnnotation != null) {
        print('check1a');
        String propertyKey = nestedAnnotation.read('propertyKey').stringValue;
        propertyKey = propertyKey == '' ? accessor.name : propertyKey;

        String defaultValue = nestedAnnotation.read('defaultValue').stringValue;
        defaultValue = defaultValue == '' ? 'default_source' : defaultValue;

        String source = nestedAnnotation.read('source').stringValue;
        source = source == '' ? 'default_source' : source;

        print('check1ab');

        String element = writeElementToBuffer(
          accessor,
          release_key,
          propertyKey,
          defaultValue: defaultValue,
          source: source,
        );
        buffer.writeln(element);
      } else {
        print('check1b');
        final propertyKey = accessor.name;
        final source = 'default_source';

        String element = writeElementToBuffer(
          accessor,
          release_key,
          propertyKey,
          defaultValue: 'defaultValue',
          source: source,
        );
        buffer.writeln(element);
      }
    }
    print('check3');
    buffer.writeln('}');
    return buffer.toString();
  }

  String writeElementToBuffer(
    PropertyAccessorElement accessor,
    String release_key,
    String propertyKey, {
    defaultValue = 'null',
    source = 'default_source',
  }) {
    StringBuffer buffer = StringBuffer();

    buffer.writeln('  @override');
    buffer.writeln(
        '  ${accessor.returnType} get ${accessor.name} => config.getValue(');
    buffer.writeln("    key: '$release_key',");
    buffer.writeln("    propertyKey: '$propertyKey',");
    buffer.writeln('    defaultValue: $defaultValue,');
    buffer.writeln("    source: '$source',");
    buffer.writeln('  );');

    return buffer.toString();
  }

  ConstantReader? _getNestedAnnotation(PropertyAccessorElement accessor) {
    for (final metadata in accessor.metadata) {
      final annotation = metadata.computeConstantValue();
      if (annotation == null) continue;

      return ConstantReader(annotation);
    }
    return null;
  }

  String camelToSnakeCase(String? input) {
    if (input == null) return '';
    return input
        .replaceAllMapped(
          RegExp(r'([a-z])([A-Z])'),
          (Match match) => '${match[1]}_${match[2]}',
        )
        .toLowerCase();
  }
}
