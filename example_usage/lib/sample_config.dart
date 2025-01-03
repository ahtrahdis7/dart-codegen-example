import 'package:dart_codegen_example/annotations.dart';

@Config()
abstract class TestConfig2 {
  int get pollCount;
  bool get isEnabled;
}
