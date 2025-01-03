// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ConfigGenerator
// **************************************************************************

import 'complex_source.dart';
import 'library_source.dart';

class _$TestConfig3Impl implements TestConfig3 {
  final Config config;
  _$TestConfig3Impl(this.config);
  @override
  int get pollCount => config.getValue(
        key: 'master_key_2',
        propertyKey: 'pollCount',
        defaultValue: defaultValue,
        source: 'default_source',
      );

  @override
  bool get isEnabled => config.getValue(
        key: 'master_key_2',
        propertyKey: 'isEnabled',
        defaultValue: defaultValue,
        source: 'default_source',
      );
}
