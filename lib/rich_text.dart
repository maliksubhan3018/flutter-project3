import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Text("This is Flutter Class Sept 2025", style: TextStyle(fontFamily: 'my font', fontWeight: FontWeight.bold),),
          ],
        ),
      ],

      ),
    );
  }
}