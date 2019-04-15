import 'package:flutter/material.dart';

class About4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sobre"),
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
              height: 95,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "Dimensões de Competências",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFFcea469)),
            ),
            DefaultTabController(
                length: 5,
                child: TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.people,
                      color: Colors.red,
                    ),
                    child: Text(
                      "Talento\n Humano",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]))
          ],
        ));
  }
}
