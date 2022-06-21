import 'package:get/get.dart';

class VideosController extends GetxController {
  RxList<String> videoList = <String>[].obs;

  addToLocalList(String filePath) {
    videoList.add(filePath);
    update();
  }
}
