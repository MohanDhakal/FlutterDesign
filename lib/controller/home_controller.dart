import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/middleware/local/home.dart';
import 'package:flutter_bloc_test/models/home/category.dart';
import 'package:flutter_bloc_test/models/home/explore.dart';
import 'package:flutter_bloc_test/models/home/favorites.dart';
import 'package:flutter_bloc_test/models/home/recommendation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Recommendation> recommendations = <Recommendation>[].obs;
  List<Explore> explorations = <Explore>[].obs;
  List<Favorites> favorites = <Favorites>[].obs;
  RxList<Category> categories = <Category>[].obs;

  List<Recommendation> get recommendationList {
    return this.recommendations;
  }

  // void togglePlaying(int atIndex){
  //   if(explorations.elementAt(atIndex).isPlaying){
  //     explorations.elementAt(atIndex).isPlaying=false;
  //   }else{
  //     explorations.elementAt(atIndex).isPlaying=true;
  //   }
  // }

  void setActiveCategoryAtIndex(int i) {
    print('in category function');
    if (categories.elementAt(i).isActive == false) {
      categories.elementAt(i).isActive = true;
      categories.refresh();
      // print(categories.elementAt(i).isActive);
    } else {
      categories.elementAt(i).isActive = false;
      categories.refresh();
    }
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
      // print(exploreList);
      exploreList.forEach((element) {
        explorations.add(Explore.fromJson(element));
      });
    });
    //fetching favorites
    LocalService.fetchFavorites().then((value) {
      List<dynamic> favorList = json.decode(value);
      // print(favorList);
      favorList.forEach((element) {
        favorites.add(Favorites.fromJson(element));
      });
    });
    //get categories
    Category ct1 = Category("Calm", "assets/images/meditate.svg");
    Category ct2 = Category("Sleep", "assets/images/sleep.svg");
    Category ct3 = Category("Relationship", "assets/images/relationship.svg");
    Category ct4 = Category("Anxiety", "assets/images/anxiety.svg");
    categories.addAll([ct1, ct2, ct3, ct4]);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}
