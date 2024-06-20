import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Trailer2());
}

class Trailer2 extends StatelessWidget {
  const Trailer2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trailer OnePiece',
      home: OnePieceFilm(),
    );
  }
}

class OnePieceFilm extends StatefulWidget {
  const OnePieceFilm({super.key});

  @override
  State<OnePieceFilm> createState() => _OnePieceFilmState();
}

class _OnePieceFilmState extends State<OnePieceFilm> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("videos/Onepiecefilm.mp4"));
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
        title: const Text("One piece Strong World"),
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
