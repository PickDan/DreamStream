import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer8());
}

class Trailer8 extends StatelessWidget {
  const Trailer8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer BadBoys',
      home: BadBoysTrailer(),
    );
  }
}

class BadBoysTrailer extends StatefulWidget {
  const BadBoysTrailer({super.key});

  @override
  State<BadBoysTrailer> createState() => _BadBoysTrailerState();
}

class _BadBoysTrailerState extends State<BadBoysTrailer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Badboys.mp4"));
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
        title: const Text("Bad Boys 4"),
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
