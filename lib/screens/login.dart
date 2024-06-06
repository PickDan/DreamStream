import 'package:flutter/material.dart';
import 'package:taller1/main.dart';

void main(){
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

Widget Body(context){
  return(
    Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí se agrega la lógica de inicio de sesión
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 20),
            ReturnHome(context),
          ],
        ),
    )
  );
}

Widget ReturnHome(context){
  return(
    FilledButton(onPressed: (){
        goHome(context);
    }, child: const Text("Ir a la ventana principal"))
  );
}

void goHome(context){
  Navigator.push(context, 
    MaterialPageRoute(builder:
      (context) => const Taller01()
    )
  );
}