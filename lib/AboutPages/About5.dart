import 'package:flutter/material.dart';

import '../NavigationDropdownButton.dart';

class About5 extends StatelessWidget {
  String text =
      "A Base de Competências do MOSE é composta por dimensões que tratam aspectos relevantes"
      "para que um empreendimento evolua e tenha e sucesso.\n"
      "O Método de Avaliação do MOSE tem como objetivo principal identificar melhorias"
      "importantes em um empreendimento e ajudá-lo a estabelecer caminhos para seu sucesso.\n"
      "Os Guias de Medição do MOSE determinam um conjunto de indicadores que"
      "tornam possível observar o desempenho de um empreendimento";

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
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Text(
                  "Arquitetura MOSE",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Container(
              height: 250,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('images/arquiteturaMose_transp.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                text,
                style: Theme.of(context).textTheme.body1,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            )),
            NavigationButton()
          ],
        ));
  }
}
