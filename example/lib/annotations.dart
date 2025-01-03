class Config {
  final String key;

  const Config({this.key = ""});
}

class ConfigKey {
  final String propertyKey;
  final String defaultValue;
  final String source;

  const ConfigKey(
      {this.propertyKey = "", this.defaultValue = "null", this.source = ""});
}
