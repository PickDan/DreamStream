import 'package:flutter/material.dart';
import 'package:taller1/trailers/DragonBallBroly.dart';
import 'package:taller1/trailers/OnePieceTrailer.dart';

class UpcommingWidget extends StatelessWidget {
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
                "Animes",
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
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/Onepiece.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerOnePiece(context),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/broly.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVerDragonBall(context),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/Onepiece.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVer(context),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/kimetsu.jpg",
                    height: 100,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              btnVer(context),
            ],
          ),
        ),
      ],
    );
  }
}

Widget btnVerOnePiece(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnePieceFilm()),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVerDragonBall(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (DragonBroly())),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}

Widget btnVer(context) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (DragonBroly())),
          );
        },
        child: Text('Ver'),
      ),
    ],
  );
}
