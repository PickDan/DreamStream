import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taller1/screens/login.dart';
import 'package:taller1/screens/movies.dart';
import 'package:taller1/screens/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //breakpoint
  runApp(Taller01());
}

class Taller01 extends StatelessWidget {
  const Taller01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenida',
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
      appBar: AppBar(
        title: Text('DreamStream'),
      ),
      body: Body(context),
    );
  }
}

Widget Body(context) {
  return (Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Plataforma para disfrutar tu streaming',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          'Disfruta de las mejores series y películas cuando y donde quieras!',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        LoginBottom(context),
        SizedBox(height: 20),
        RegisterBottom(context),
        SizedBox(height: 20),
        MoviesList(context)

      ],
    ),
  ));
}

Widget LoginBottom(BuildContext context) {
  return (
    ElevatedButton(onPressed: (){
      Navigator.push(context, 
        MaterialPageRoute(builder: 
          (context) =>const Login()
        )
      );
    }, child:  const Text("Iniciar sesión"))
  );
}

Widget RegisterBottom(BuildContext context){
  return(
   ElevatedButton(onPressed: (){
      Navigator.push(context, 
        MaterialPageRoute(builder: 
          (context) =>const Register()
        )
      );
    }, child:  const Text("Registrarse"))
  );
}

Widget MoviesList(BuildContext context){
   return (
    ElevatedButton(onPressed: (){
      Navigator.push(context, 
        MaterialPageRoute(builder: 
          (context) => const Movies()
        )
      );
    }, child:  const Text("Catálogo de películas"))
  );
}