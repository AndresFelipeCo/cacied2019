import 'package:cacied/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>{
  String url;

  @override
  Widget build(BuildContext context) {
    print (url);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CACIED 2019',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xff1a237e),
        accentColor: Colors.teal,

        // Define la Familia de fuente por defecto
        //fontFamily: 'Montserrat',

        // Define el TextTheme por defecto. Usa esto para espicificar el estilo de texto por defecto
        // para cabeceras, títulos, cuerpos de texto, y más.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: '/splashScreen',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/': (context) => HomePage(),
        '/splashScreen': (context) => SplashScreen(),
      },

    );
  }
}