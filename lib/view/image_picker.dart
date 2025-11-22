import 'dart:io';

import 'package:figma_project/controllers/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagePickerController controller = Get.put(ImagePickerController());

  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('image picker')),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: controller.imagepath.isNotEmpty
                    ? FileImage(File(controller.imagepath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                print('build');
                controller.getimage();
              },
              child: Text('pick image'),
            ),
          ],
        );
      }),
    );
  }
}
