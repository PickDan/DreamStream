import 'package:flutter/material.dart';

void main(){
  runApp(Details());
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Detalles de peliculas",
      home: Home(),
    );
  }

  
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

