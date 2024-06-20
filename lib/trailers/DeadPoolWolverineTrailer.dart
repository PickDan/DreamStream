import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer7());
}

class Trailer7 extends StatelessWidget {
  const Trailer7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer Deadpool x Wolverine',
      home: DeadPoolTrailer(),
    );
  }
}

class DeadPoolTrailer extends StatefulWidget {
  const DeadPoolTrailer({super.key});

  @override
  State<DeadPoolTrailer> createState() => _DeadPoolTrailerState();
}

class _DeadPoolTrailerState extends State<DeadPoolTrailer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/DedWol.mp4"));
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
        title: const Text("DeadPool & Wolverine"),
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
