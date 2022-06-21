import 'dart:io';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideosController extends GetxController {
  RxList<String> videoList = <String>[].obs;

  addToLocalList(String filePath) {
    videoList.add(filePath);
  }

}
