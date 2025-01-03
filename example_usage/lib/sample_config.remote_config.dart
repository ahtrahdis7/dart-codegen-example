// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ConfigGenerator
// **************************************************************************

import 'complex_source.dart';
import 'library_source.dart';


class _$TestConfig2Impl implements TestConfig2 {
  final Config config;
  _$TestConfig2Impl(this.config);
  @override
  int get pollCount => config.getValue(
    key: 'test_config2',
    propertyKey: 'pollCount',
    defaultValue: defaultValue,
    source: 'default_source',
  );

  @override
  bool get isEnabled => config.getValue(
    key: 'test_config2',
    propertyKey: 'isEnabled',
    defaultValue: defaultValue,
    source: 'default_source',
  );

}

import 'complex_source.dart';
import 'library_source.dart';


class _$TestConfigMyTestAbcImpl implements TestConfigMyTestAbc {
  final Config config;
  _$TestConfigMyTestAbcImpl(this.config);
  @override
  int get pollCount => config.getValue(
    key: 'test_config_my_test_abc',
    propertyKey: 'pollCount',
    defaultValue: defaultValue,
    source: 'default_source',
  );

  @override
  bool get isEnabled => config.getValue(
    key: 'test_config_my_test_abc',
    propertyKey: 'isEnabled',
    defaultValue: defaultValue,
    source: 'default_source',
  );

}
