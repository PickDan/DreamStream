import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer4());
}

class Trailer4 extends StatelessWidget {
  const Trailer4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer Ultron',
      home: UltronTrailer(),
    );
  }
}

class UltronTrailer extends StatefulWidget {
  const UltronTrailer({super.key});

  @override
  State<UltronTrailer> createState() => _UltronTrailerState();
}

class _UltronTrailerState extends State<UltronTrailer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Ultronaven.mp4"));
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
        title: const Text("Avengers Era de Ultrón"),
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
