import 'package:custom_camera/view/camera_page.dart';
import 'package:custom_camera/view/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

import '../controllers/video_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final VideosController videosController = Get.put(VideosController());

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Camera'),
          elevation: 0,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Obx(() => ListView.builder(
              itemCount: videosController.videoList.length,
              itemBuilder: ((context, index) => ListTile(
                    title: Text(basename(videosController.videoList[index].toString())),
                    onTap: () {
                      Get.to(
                        VideoPage(
                          filePath:
                              videosController.videoList[index].toString(),
                          visibility: false,
                        ),
                      );
                    },
                  )),
            )),
        floatingActionButton: IconButton(
            icon: const Icon(
              Icons.video_camera_front_rounded,
              color: Colors.orangeAccent,
              size: 40,
            ),
            onPressed: () {
              Get.to(
                const CameraPage(),
              );
            }),
      );
    }
  }
}
