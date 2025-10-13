import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ConstrainedBox(constraints: BoxConstraints(maxHeight:300 ,minHeight:  150,maxWidth: 200,minWidth: 100,),
          
              child: AspectRatio(aspectRatio: 2,
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("assets/figma_images/Image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
