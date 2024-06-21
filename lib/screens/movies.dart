import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taller1/interface/HomePage.dart';

void main() {
  runApp(Movies());
}

class Movies extends StatefulWidget {
  const Movies({super.key});
  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0F111D)),
      home: HomePage(),
    );
  }
}
