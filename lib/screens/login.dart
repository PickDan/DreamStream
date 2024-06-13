import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taller1/main.dart';
import 'package:taller1/screens/movies.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login',
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
        title: Text('Iniciar sesión'),
      ),
      body: Body(context),
    );
  }
}

Widget Body(context) {
  return (Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        Email(context),
        Password(context),
        BtnLogin(context),
        ReturnHome(context),
      ],
    ),
  ));
}

Widget ReturnHome(context) {
  return (FilledButton(
      onPressed: () {
        goHome(context);
      },
      child: const Text("Ir a la ventana principal")));
}

void goHome(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Taller01()));
}

final TextEditingController _email = TextEditingController();
Widget Email(context) {
  return TextField(
    controller: _email,
    decoration: InputDecoration(
      labelText: 'Correo electrónico',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.emailAddress,
  );
}

final TextEditingController _password = TextEditingController();
Widget Password(context) {
    return Column(
    children: [
      SizedBox(height: 20),
      TextField(
        controller: _password,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          border: OutlineInputBorder(),
        ),
        obscureText: true,
      ),
    ],
  );
}

Widget BtnLogin(context){
  return(
    FilledButton(onPressed: (){
      login(context);
    }, child: Text("Iniciar sesión"))
  );
}

Future<void> login(context) async {
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _email.text,
      password: _password.text,
    );
    Navigator.push(context, 
      MaterialPageRoute(builder: 
      (context) => Movies()
      )
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
