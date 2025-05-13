// lib/flavors/environment.dart
enum Environment { dev, staging, prod }

class FlavorConfig {
  final String name;
  final Environment environment;

  static late FlavorConfig instance;

  FlavorConfig._internal(this.name, this.environment);

  factory FlavorConfig({required String name, required Environment env}) {
    instance = FlavorConfig._internal(name, env);
    return instance;
  }
}
