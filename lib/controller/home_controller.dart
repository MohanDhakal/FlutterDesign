import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/middleware/local/home.dart';
import 'package:flutter_bloc_test/models/home/explore.dart';
import 'package:flutter_bloc_test/models/home/favorites.dart';
import 'package:flutter_bloc_test/models/home/recommendation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isActive = false.obs;

  List<Recommendation> recommendations = <Recommendation>[].obs;
  List<Explore> explorations = <Explore>[].obs;
  List<Favorites> favorites = <Favorites>[].obs;

  void triggerBtn() {
    isActive.toggle();
  }

  List<Recommendation> get recommendationList {
    return this.recommendations;
  }

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setEnabledSystemUIOverlays([]);

    //fetching recommendations
    LocalService.fetchRecommendations().then((value) {
      List<dynamic> recommendationList = json.decode(value);

      recommendationList.forEach((element) {
        recommendations.add(Recommendation.fromJson(element));
      });
    });

    //fetching exploration
    LocalService.fetchExplores().then((value) {
      List<dynamic> exploreList = json.decode(value);
      print(exploreList);
      exploreList.forEach((element) {
        explorations.add(Explore.fromJson(element));
      });
    });
    //fetching favorites
    LocalService.fetchFavorites().then((value) {
      List<dynamic> favorList = json.decode(value);
      print(favorList);

      favorList.forEach((element) {
        favorites.add(Favorites.fromJson(element));
      });
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}
