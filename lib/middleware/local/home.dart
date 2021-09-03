import 'package:flutter/services.dart';

class LocalService {
  static Future<String> fetchRecommendations() async {
    String jsonString =
        await rootBundle.loadString("assets/data/recommendations.json");
    return jsonString;
  }
  static Future<String> fetchFavorites()async{
    String jsonString =
    await rootBundle.loadString("assets/data/favorites.json");
    return jsonString;

  }
  static Future<String> fetchExplores()async{
    String jsonString =
    await rootBundle.loadString("assets/data/explores.json");
    return jsonString;

  }

}
