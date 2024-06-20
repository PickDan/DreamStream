import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer5());
}

class Trailer5 extends StatelessWidget {
  const Trailer5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer Dragon ball super broly',
      home: DragonBroly(),
    );
  }
}

class DragonBroly extends StatefulWidget {
  const DragonBroly({super.key});

  @override
  State<DragonBroly> createState() => _DragonBrolyState();
}

class _DragonBrolyState extends State<DragonBroly> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Superbroly.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Dragon Ball Super Broly"),
        centerTitle: true,
      ),
      body: Center(
        child: AspectRatio(
            aspectRatio: 16 / 10,
            child: FlickVideoPlayer(flickManager: flickManager)),
      ),
    );
  }
}
