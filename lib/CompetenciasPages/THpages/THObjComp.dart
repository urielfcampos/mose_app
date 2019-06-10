import 'package:flutter/material.dart';

class THCompetencia extends StatelessWidget {
  final competencia;
  THCompetencia({this.competencia});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objetivos"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: 
    );
  }
}

class ObjetivoList extends StatefulWidget {
  @override
  _ObjetivoListState createState() => _ObjetivoListState();
}

class _ObjetivoListState extends State<ObjetivoList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
