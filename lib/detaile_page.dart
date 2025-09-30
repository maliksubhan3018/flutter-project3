import 'package:figma_project/custom_widgetslist/detaile_widget.dart';
import 'package:flutter/material.dart';
import 'package:figma_project/custom_imageslist/my_listimages.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details")),
      body: ProductDetailCard(
        imagePath: MyImages.person1,
        title: "Men's Jacket",
        price: "\$45.00",
        oldPrice: "\$67.00",
        discount: "up to 29% off",
        rating: 4.7,
        variations: ["Green", "Grey"],
      ),
    );
  }
}
