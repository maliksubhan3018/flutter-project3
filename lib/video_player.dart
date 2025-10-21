// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoExample extends StatefulWidget {
//   const VideoExample({super.key});

//   @override
//   State<VideoExample> createState() => _VideoExampleState();
// }

// class _VideoExampleState extends State<VideoExample> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     // ignore: deprecated_member_use
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//     )..initialize().then((_) {
//         setState(() {});
//         _controller.play(); 
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Video Player Example')),
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//             : const CircularProgressIndicator(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _controller.value.isPlaying
//                 ? _controller.pause()
//                 : _controller.play();
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
