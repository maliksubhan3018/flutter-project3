import 'package:figma_project/custom_imageslist/my_listimages.dart';
import 'package:figma_project/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/widgets.dart';

class Myhero extends StatelessWidget {
  const Myhero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: "developer",
              child: ListTile(
                onTap: () {
                  Get.to(() => Myprofile());
                },
                leading: Image.asset(MyImages.person1, width: 100),
                title: Text("subhan"),
                subtitle: Text("flutter developer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
