import 'package:figma_project/myhero.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Classs21 extends StatefulWidget {
  const Classs21({super.key});

  @override
  State<Classs21> createState() => _Classs21State();
}

class _Classs21State extends State<Classs21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            // card area
            Card(
              color: Colors.pink,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("flutter dev"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.orange,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("flutter dev"),
              ),
            ),

            SizedBox(height: 10),
// chip area 
            Chip(
              label: Text("coding ygugytdrvjb yuffxvj,gcgfxxcj bn vcxgcrf"),
              avatar: Icon(Icons.code),
              backgroundColor: Colors.cyanAccent,
            ),
            SizedBox(height: 10),
            Chip(
              label: Text('Tag 1'),
              onDeleted: () {
                print('Tag 1 deleted');
              },
              deleteIcon: Icon(Icons.close),
            ),
            SizedBox(height: 5),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Firebase')),
              ],
            ),
            SizedBox(height: 3,),
            // tooltip area 
          Tooltip(
            message: "this is my page info",
            // ignore: sort_child_properties_last
            child: Icon(Icons.info,size: 60,),
            preferBelow: true,
          ),
          SizedBox(height: 2,),
Tooltip(
  message: 'Profile Settings',
  decoration: BoxDecoration(
    color: Colors.teal,
    borderRadius: BorderRadius.circular(10),
  ),
  textStyle:  TextStyle(color: Colors.white, fontSize: 14),
  waitDuration:  Duration(milliseconds: 500), // delay before showing
  showDuration:  Duration(seconds: 2),
  child:  Icon(Icons.person, size: 40, color: Colors.teal),
),
SizedBox(height: 40,),

// badge area 
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Badge(
      label: Text('2'),
      child: Icon(Icons.message, size: 40),
    ),
     SizedBox(width: 20),
    Badge(
      label: Text('7'),
      backgroundColor: Colors.orange,
      child: Icon(Icons.shopping_cart, size: 40),
    ),
     SizedBox(width: 20),
    Badge(
      backgroundColor: Colors.green,
      label: Text(''),
      child: Icon(Icons.person, size: 40),
    ),
  ],
),
SizedBox(height: 10,),
ElevatedButton(
          onPressed: () {
            // 👇 Navigate to another screen using GetX
            Get.to(() => const Myhero());
          },
          child: const Text("Go to Second Screen"),
        ),



          ],
        ),
      ),
    );
  }
}
