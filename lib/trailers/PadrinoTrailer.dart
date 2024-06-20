import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer6());
}

class Trailer6 extends StatelessWidget {
  const Trailer6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer El padrino',
      home: ElPadrino(),
    );
  }
}

class ElPadrino extends StatefulWidget {
  const ElPadrino({super.key});

  @override
  State<ElPadrino> createState() => _ElPadrinoState();
}

class _ElPadrinoState extends State<ElPadrino> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Elpadrino.mp4"));
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
        title: const Text("El padrino"),
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
