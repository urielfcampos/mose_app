import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import './AboutPages/introducao.dart';
import './CompetenciasPages/MainPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'MOSE APP',
    theme: ThemeData(
        // Define the default Brightness and Colors

        // Define the default Font Family
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
              fontSize: 30.0, fontStyle: FontStyle.italic, color: Colors.white),
          body1: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Hind',
          ),
        )),
    home: MoseApp(),
  ));
}

class MoseApp extends StatefulWidget {
  @override
  _MoseAppState createState() => _MoseAppState();
}

class _MoseAppState extends State<MoseApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOSE"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            height: 300,
            width: 300,
            child: FadeTransition(
              opacity: animation,
              child: Image.asset("images/LogoMoseTransparency.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 10, 80, 20),
            child: RaisedButton(
              child: Text(
                "Sobre",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Competencias",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mainCompetencias()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Noticias",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
