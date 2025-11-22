import 'package:figma_project/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print('widget rebuild');
    return Scaffold(
      appBar: AppBar(title: Text("state management")),
      body: Center(
        child: Obx(() {
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementcounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
