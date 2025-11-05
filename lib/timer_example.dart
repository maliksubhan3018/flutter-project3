import 'dart:async';
import 'package:flutter/material.dart';

class TimerExample extends StatefulWidget {
  const TimerExample({super.key});

  @override
  State<TimerExample> createState() => _TimerExampleState();
}

class _TimerExampleState extends State<TimerExample> {
  int seconds = 0; // counter
  Timer? timer; // timer object

  @override
  void initState() {
    super.initState();
    print("Widget Created!");
    
    // Start timer when widget is created
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        seconds++;
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer to free memory
    timer?.cancel();
    print("Widget Destroyed!");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Timer Example")),
      body: Center(
        child: Text(
          "Time: $seconds seconds",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
