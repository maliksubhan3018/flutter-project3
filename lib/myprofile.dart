import 'package:figma_project/custom_imageslist/my_listimages.dart';
import 'package:flutter/material.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(tag: "developer",
           child: Image.asset(MyImages.person1,width: 200,)
           ),
           
        ],
      ),
    );
  }
}