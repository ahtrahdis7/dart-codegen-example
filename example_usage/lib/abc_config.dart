import 'package:dart_codegen_example/annotations.dart';

@Config()
abstract class TestConfigMyTest {
  int get pollCount;
  bool get isEnabled;
}
