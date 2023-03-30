import 'dart:convert';

import 'package:clima/controllers/secrets.dart';
import 'package:clima/controllers/secrets_loader.dart';
import 'package:clima/models/climate_model.dart';
import 'package:http/http.dart' as http;

class GetData {
  Future<Secret> secret = SecretLoader(secretPath: "secrets.json").load();

  late String cityid;
  List<Climate> _linhas = [];

  getDados() async {
    final response = await http.get(Uri.parse(
        "http://api.openweathermap.org/geo/1.0/direct?q=${cityid}&limit=5&appid=${secret}"));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final Map<String, dynamic> clima =
          json['temp']['main']['temp']['temp_min']['temp_max']['description'];
    }
  }
}
