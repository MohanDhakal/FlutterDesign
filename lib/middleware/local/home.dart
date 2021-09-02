import 'package:flutter/services.dart';

class LocalService {
  static Future<String> fetchJsonData() async {
    String jsonString =
        await rootBundle.loadString("assets/data/recommendations.json");
    return jsonString;
  }
}
