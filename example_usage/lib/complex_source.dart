import 'package:dart_codegen_example/annotations.dart';

// @Config(key: 'master_key') // with or without
// abstract class TestConfig {
//   @ConfigKey(
//     defaultValue: 'false',
//   )
//   bool get isEnabled;

//   @ConfigKey(propertyKey: "feature_is_disabled")
//   bool get isDisabled;

//   @ConfigKey(propertyKey: "poll_count_key", defaultValue: '3')
//   int get pollCount;

//   // property_key = configuration
//   @ConfigKey(defaultValue: '{}', source: 'alt_config_source')
//   Map<String, String> get configuration;

//   @ConfigKey(
//       propertyKey: "feature_is_enabled_ios", defaultValue: "default_value")
//   String get isEnabledForIos;

//   // only generate for default case
//   // property_key = is_enabled_for_android
//   // source = initial_source
//   // default_value = false
//   bool get isEnabledForAndroid;
// }



@Config(key: "master_key_2")
abstract class TestConfig3 {
  int get pollCount;
  bool get isEnabled;
}
