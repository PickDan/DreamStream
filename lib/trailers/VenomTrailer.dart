import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer3());
}

class Trailer3 extends StatelessWidget {
  const Trailer3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer Venom',
      home: VenomTrailer(),
    );
  }
}

class VenomTrailer extends StatefulWidget {
  const VenomTrailer({super.key});

  @override
  State<VenomTrailer> createState() => _VenomTrailerState();
}

class _VenomTrailerState extends State<VenomTrailer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Venom3.mp4"));
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
        title: const Text("Trilogía de venom"),
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
