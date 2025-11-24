// ignore: file_names
import 'package:figma_project/carapp.dart';
import 'package:figma_project/classs21.dart';
import 'package:figma_project/myhero.dart';
import 'package:figma_project/shimmer_loading.dart';
import 'package:figma_project/slideable_tile.dart';
import 'package:figma_project/sliver_appbar.dart';
import 'package:figma_project/tabs_class.dart';
import 'package:figma_project/tabs_updated.dart';
import 'package:figma_project/timer_example.dart';
import 'package:figma_project/video_player.dart';
import 'package:figma_project/view/home_screen.dart';
import 'package:figma_project/view/image_picker.dart';
import 'package:figma_project/view/login.dart';
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
              Get.to(() => const Myhero());
            },
            child: const Text("my hero"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Classs21());
            },
            child: const Text("screen 21"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const TabsClass());
            },
            child: const Text("tabs"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const VideoExample());
            },
            child: const Text("video player"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
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

          // switch button example
          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Shimmerloading());
            },
            child: const Text("shimmer loading"),
          ),
          SizedBox(height: 5),
          //  ElevatedButton(
          //   onPressed: () {
          //                   Get.to(() =>const  DataTable());

          //   },
          //   child: const Text("data table ")
          // ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const TimerExample());
            },
            child: const Text("timer example "),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const CarApp());
            },
            child: const Text("car app "),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const HomeScreen());
            },
            child: const Text("home screen "),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const ImagePicker());
            },
            child: const Text("image picker "),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Login());
            },
            child: const Text("login page "),
          ),
        ],
      ),
    );
  }
}
