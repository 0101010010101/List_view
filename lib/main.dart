import 'package:flutter/material.dart';
import 'screens/screens.dart';
//El nombre de import 'package:flutternavegacion/screens/secondary.dart'; se saca de pubspec.yaml
//esto importa las pantallas del proyecto

//import 'package:flutternavegacion/screens/pantallas.dart';
//import 'package:flutternavegacion/screens/primary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//Quitamos debug
      debugShowCheckedModeBanner: false,

      initialRoute: "/primary",
      routes: {
        "/listview1": (BuildContext context) => listview1(),
        "/listview2": (BuildContext context) => listview2(),
      },
//Configurar tema
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.amber,
          textTheme:
              TextTheme(bodyText2: TextStyle(color: Colors.red, fontSize: 30))),
    );
  }
}
