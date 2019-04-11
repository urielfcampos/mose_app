import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() {
  runApp(MaterialApp(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StackOfCards()));
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
              onPressed: () {},
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

class StackOfCards extends StatefulWidget {
  @override
  _StackOfCardsState createState() => _StackOfCardsState();
}

class _StackOfCardsState extends State<StackOfCards> {
  double topValue1 = 20;
  double topValue2 = 40;
  double topValue3 = 60;

  bool expanded = false;

  void expandCardContents(int cardPosition) {
    setState(() {
      if (expanded) {
        switch (cardPosition) {
          case 1:
            topValue2 = topValue2 - 260;
            topValue3 = topValue3 - 260;
            expanded = false;
        }
      } else {
        switch (cardPosition) {
          case 1:
            topValue2 = topValue2 + 260;
            topValue3 = topValue3 + 260;
            expanded = true;
        }
      }
    });
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: topValue1,
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadiusDirectional.vertical(
                                    top: Radius.circular(10),
                                    bottom: Radius.circular(0))),
                            child: Text(
                              "SOMETHING",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onTap: () {
                            print("SOMETHING");
                            expandCardContents(1);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        )
                      ],
                    ),
                  ))),
          Positioned(
              top: topValue2,
              child: Card(
                elevation: 8,
                color: Color.fromARGB(255, 255, 0, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(width: 300, height: 300),
              )),
          Positioned(
              top: topValue3,
              child: Card(
                elevation: 8,
                color: Color.fromARGB(255, 0, 0, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(width: 300, height: 300),
              )),
        ],
      ),
    );
  }
}
