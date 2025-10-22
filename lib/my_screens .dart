// ignore: file_names
import 'package:figma_project/classs21.dart';
import 'package:figma_project/myhero.dart';
import 'package:figma_project/slideable_tile.dart';
import 'package:figma_project/sliver_appbar.dart';
import 'package:figma_project/tabs_class.dart';
import 'package:figma_project/tabs_updated.dart';
import 'package:figma_project/video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyScreens extends StatefulWidget {
  const MyScreens({super.key});

  @override
  State<MyScreens> createState() => _MyScreensState();
}

class _MyScreensState extends State<MyScreens> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // 👇 Navigate to another screen using GetX
              Get.to(() => const Myhero());
            },
            child: const Text("my hero"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              // 👇 Navigate to another screen using GetX
              Get.to(() => const Classs21());
            },
            child: const Text("screen 21"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              // 👇 Navigate to another screen using GetX
              Get.to(() => const TabsClass());
            },
            child: const Text("tabs"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // 👇 Navigate to another screen using GetX
              Get.to(() => const VideoExample());
            },
            child: const Text("video player"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              // 👇 Navigate to another screen using GetX
              Get.to(() => const SliverAppBarExample());
            },
            child: const Text("sliver app  bar"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Slideablelist());
            },
            child: const Text("slidable list tile"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Updatedtabs());
            },
            child: const Text("updated tabs"),
          ),
          SizedBox(height: 5),
          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
