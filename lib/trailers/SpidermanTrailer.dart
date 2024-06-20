import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer1());
}

class Trailer1 extends StatelessWidget {
  const Trailer1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer SpiderMan',
      home: SpidermanTrailer(),
    );
  }
}

class SpidermanTrailer extends StatefulWidget {
  const SpidermanTrailer({super.key});

  @override
  State<SpidermanTrailer> createState() => _SpidermanTrailerState();
}

class _SpidermanTrailerState extends State<SpidermanTrailer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/spiderman.mp4"));
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
        title: const Text("Spiderman"),
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
