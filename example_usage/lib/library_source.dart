abstract class Config {
  T getValue<T>(
      {required String key,
      String? propertyKey,
      required T defaultValue,
      required String source});
}

class ConfigImpl extends Config {
  @override
  T getValue<T>(
      {required String key,
      String? propertyKey,
      required T defaultValue,
      required String source}) {
        return defaultValue;
  }
}
