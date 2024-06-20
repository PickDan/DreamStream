import 'package:flutter/material.dart';
import 'package:taller1/trailers/DeadPoolWolverineTrailer.dart';
import 'package:taller1/trailers/SpidermanTrailer.dart';
import 'package:taller1/trailers/UltronTrailer.dart';
import 'package:taller1/trailers/VenomTrailer.dart';

class Newmovieswidget extends StatelessWidget {
  //const Newmovieswidget({super.key});

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
                "Heroes",
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
                    "images/deadpool.png",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerDead(context),
               Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/spiderman.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerSpiderman(context),
               Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/ultron.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerUltron(context),
               Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/venom.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerVenom(context)
            ],
          ),
        ),
      ],
      
    );
  }
}

Widget btnVerDead(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeadPoolTrailer()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVerSpiderman(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SpidermanTrailer()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVerUltron(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UltronTrailer()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVerVenom(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VenomTrailer()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}