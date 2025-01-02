import 'package:dart_codegen_example/annotations.dart';

part 'complex_source.g.dart';

@ConfigGenerator2('test_key', 'propertyKey_2')
@ConfigGenerator('master_key', 'property_key')
abstract class TestConfig {
  bool get isEnabled;

  bool get isDisabled;

  bool get isEnabledForAndroid;

  Map<String, String> get configuration;

  bool get isEnabledForIos;
}
