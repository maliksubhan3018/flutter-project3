import 'package:figma_project/custom_imageslist/burger_widget.dart';
import 'package:flutter/material.dart';
import 'package:figma_project/custom_imageslist/my_listimages.dart';


class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger King'),
      ),
      body: RestaurantCard(
        imagePath: MyImages.burger,
        name: "Burger King",
        menu: "Burger, Rice, Spaghetti",
        rating: 4.9,
        distance: "2.6 km",
        shippingInfo: "\$ Free shipping",
      ),
    );
  }
}
