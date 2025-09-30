import 'package:figma_project/custom_widgetslist/starbucks_widget.dart';
import 'package:flutter/material.dart';
import 'package:figma_project/custom_imageslist/my_listimages.dart';


class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderCard(
        imagePath: MyImages.starbucks,
        title: "Starbucks",
        address: "8700 Beverly, CA 90048",
        priceAndItems: "\$40 • 3 items",
        date: "Tuesday, 03 March 2023",
        status: "drink | Completed",
        onRate: () {
          // Handle Rate action
        },
        onReorder: () {
          // Handle Reorder action
        },
      ),
    );
  }
}
