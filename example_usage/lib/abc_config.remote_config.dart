// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ConfigGenerator
// **************************************************************************

import 'complex_source.dart';
import 'library_source.dart';

class _$TestConfigMyTestImpl implements TestConfigMyTest {
  final Config config;
  _$TestConfigMyTestImpl(this.config);
  @override
  int get pollCount => config.getValue(
        key: 'test_config_my_test',
        propertyKey: 'pollCount',
        defaultValue: defaultValue,
        source: 'default_source',
      );

  @override
  bool get isEnabled => config.getValue(
        key: 'test_config_my_test',
        propertyKey: 'isEnabled',
        defaultValue: defaultValue,
        source: 'default_source',
      );
}
