import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';

class AnnotationGenerator extends GeneratorForAnnotation<ConfigGenerator> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final key = annotation.read('key').stringValue;
    final propertyKey = annotation.read('propertyKey').stringValue;
    print("RUNNING >> AnnotationGenerator");
    return '''
// Source library: ${element.source?.shortName}
// DO NOT EDIT. This is code generated via package:source_gen/source_gen.dart

void testLibraryGenerator() {

  print('Hello from TestLibraryGenerator!');
  print('key: $key');
  print('propertyKey: $propertyKey');
}
    ''';
  }
}
