import 'package:flutter/material.dart';
import 'package:taller1/trailers/BadBoysTrailer.dart';
import 'package:taller1/trailers/PadrinoTrailer.dart';

class Allmovies extends StatelessWidget {
  //const Upcommingwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Drama y acción",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Ver todo",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //for(int i = 1; i < 8; i++)
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/badboys.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ), 
                ),
              ),
              btnVerBadBoys(context),
               Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/padrino.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerPadrino(context),
            ],
          ),
        ),
      ],
      
    );
  }
}

Widget btnVerBadBoys(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BadBoysTrailer()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVerPadrino(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ElPadrino()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}