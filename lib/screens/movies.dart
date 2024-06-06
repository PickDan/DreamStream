import 'package:flutter/material.dart';

void main() {
  runApp(Movies());
}

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Catálogo de películas",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> movies = [
    {
      "title": "Scary Movie",
      "image": "https://via.placeholder.com/150",
      "description": "Movie about comedy"
    },
    {
      "title": "Dune",
      "image": "https://via.placeholder.com/150",
      "description": "Action movie"
    },
    {
      "title": "Ghost",
      "image": "https://via.placeholder.com/150",
      "description": "Terror movie"
    },
    {
      "title": "Saw 2",
      "image": "https://via.placeholder.com/150",
      "description": "Terror movie"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Películas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Category(context, "Populares", movies),
            Category(context, "Tendencias", movies),
            Category(context, "Nuevas Llegadas", movies),
          ],
        ),
      ),
    );
  }
}

Widget Category(
    BuildContext context, String category, List<Map<String, String>> movies) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return WatchMovie(context, movies[index]);
            },
          ),
        ),
      ],
    ),
  );
}

Widget WatchMovie(BuildContext context, Map<String, String> movie) {
  return Container(
    width: 150,
    margin: const EdgeInsets.only(right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          movie['image']!,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 5),
        Text(
          movie['title']!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          movie['description']!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}
