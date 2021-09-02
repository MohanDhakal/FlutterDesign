import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/middleware/local/home.dart';
import 'package:flutter_bloc_test/models/home/recommendation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isActive = false.obs;

  List<Recommendation> recommendations = <Recommendation>[].obs;

  void set triggerBtn(RxBool status) {
    this.isActive = status;
  }

  List<Recommendation> get recommendationList {
    return this.recommendations;
  }

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setEnabledSystemUIOverlays([]);
    LocalService.fetchJsonData().then((value) {
      List<dynamic> jsonResponse = json.decode(value);

      jsonResponse.forEach((element) {
        recommendations.add(Recommendation.fromJson(element));
      });
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}
