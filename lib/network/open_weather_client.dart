import 'package:clima/controllers/secrets.dart';
import 'package:clima/controllers/secrets_loader.dart';

class OpenweatherClient {
  Future<Secret> secret = SecretLoader(secretPath: "secrets.json").load();
}
