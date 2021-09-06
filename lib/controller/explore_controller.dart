import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/models/home/music.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  // var animated=false.obs;
  Rx<bool> selected = false.obs;
  Rx<bool> animated = false.obs;
  RxList<Music> musics = <Music>[].obs;

  @override
  void onInit() {
    super.onInit();

    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(milliseconds: 300)).then((value) {
      animated = animated.toggle();
    });
    print("animation:$animated");
    //get music list
    Music m1 = Music(
        "Faster Tissue Cells Repair",
        "Re-tune your system to regenerate tissue cells",
        "assets/images/nature2.png");
    Music m2 = Music(
        "Ultra Awakening Binaural Beats",
        "Activate the third eye, awaken crystal clear",
        "assets/images/healing.png");
    Music m3 = Music("Balances Hormones Naturally",
        "Always play this music in low", "assets/images/binaural.png");
    Music m4 = Music(
        "Ultra Awakening Binaural Beats",
        "Activate the third eye, awaken crystal clear",
        "assets/images/healing.png");

    musics.addAll([m1, m2, m3, m4]);
  }

  void setMusicAtIndex(int i) {
    // musics.indexWhere((element) => false)
    for (int j = 0; j < musics.length; j++) {
      if (j == i) {
        musics.elementAt(j).isPlaying = true;
        // musics.refresh();
      } else {
        musics.elementAt(i).isPlaying = false;
        // musics.refresh();
      }
    }
    musics.refresh();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}
