import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String address;
  final String priceAndItems;
  final String date;
  final String status;
  final VoidCallback? onRate;
  final VoidCallback? onReorder;

  const OrderCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.address,
    required this.priceAndItems,
    required this.date,
    required this.status,
    this.onRate,
    this.onReorder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Status + Date Row
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                status,
                style: const TextStyle(color: Colors.grey),
              ),
              Text(
                date,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),

        // Card with Image + Details
        Card(
          color: Colors.white,
          margin: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Image on left
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              const SizedBox(width: 16.0),

              // Details on right
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.check_circle,
                            color: Colors.green, size: 16),
                      ],
                    ),
                    Text(
                      address,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      priceAndItems,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Action Buttons
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: onRate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                ),
                child: const Text('Rate'),
              ),
              ElevatedButton(
                onPressed: onReorder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Re-Order'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
