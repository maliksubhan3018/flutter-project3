import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String menu;
  final double rating;
  final String distance;
  final String shippingInfo;

  const RestaurantCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.menu,
    required this.rating,
    required this.distance,
    required this.shippingInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image at the top
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
        // Restaurant name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        // Menu items
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Open: $menu',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        // Rating and location
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.star, color: Colors.yellow, size: 20),
              const SizedBox(width: 5),
              Text(rating.toString(), style: const TextStyle(fontSize: 16)),
              const SizedBox(width: 10),
              const Icon(Icons.location_on, color: Colors.grey, size: 20),
              const SizedBox(width: 5),
              Text(distance, style: const TextStyle(fontSize: 16)),
              const Spacer(),
              Text(
                shippingInfo,
                style: const TextStyle(fontSize: 16, color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
