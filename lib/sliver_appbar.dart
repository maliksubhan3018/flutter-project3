import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Access screen size using Get.mediaQuery
    final screenHeight = Get.mediaQuery.size.height;
    final screenWidth = Get.mediaQuery.size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Sliver App Bar"),
            expandedHeight: screenHeight * 0.25,
            backgroundColor: Colors.blueAccent,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/figma_images/Image.png',
                width: screenWidth,
                height: screenHeight * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text(
                  'Item #$index',
                  style: TextStyle(fontSize: screenWidth * 0.045),
                ),
              ),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
