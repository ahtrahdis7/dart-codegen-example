import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class TestLibraryGenerator extends Generator {
  @override
  String generate(LibraryReader library, BuildStep buildStep) {
    return '''
// Source library: ${library.element.source.uri}
// DO NOT EDIT. This is code generated via package:source_gen/source_gen.dart

void testLibraryGenerator() {
  print('Hello from TestLibraryGenerator!');
}
    ''';
  }
}