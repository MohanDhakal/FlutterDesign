import 'package:get/get.dart';

class GenreController extends GetxController {
  Rx<int> selectionCount = 0.obs;

  addCount() {
    selectionCount.value++;
  }

  removeCount() {
    selectionCount.value--;
  }
}
class ArtistController extends GetxController{
  Rx<int> selectionCount = 0.obs;

  addCount() {
    selectionCount.value++;
  }

  removeCount() {
    selectionCount.value--;
  }
}