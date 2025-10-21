import 'package:figma_project/custom_imageslist/my_listimages.dart';
import 'package:figma_project/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:flutter/widgets.dart';

class Myhero extends StatefulWidget {
  const Myhero({super.key});

  @override
  State<Myhero> createState() => _MyheroState();
}

class _MyheroState extends State<Myhero> {
  bool anim = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             Lottie.asset(MyImages.myanim, width: 200),
            // Lottie.asset('assets/figma_images/anime.json'),
            Lottie.asset('assets/figma_images/construction.json', width: 250),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                anim = !anim;
                setState(() {});
              },
              child: Text("mybutton"),
            ),
            SizedBox(
              height: 20,
            ), // Image.asset('assets/figma_images/image.png'),
            Hero(
              tag: "developer",
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
