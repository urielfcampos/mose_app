import 'package:flutter/material.dart';

import '../NavigationDropdownButton.dart';

class About2 extends StatelessWidget {
  final firstText =
      ' O fator sobrevivência está ligado aos elementos da preservação de si mesmo'
      ', de sua integridade física, da satisfação das necessidades básicas (comer,beber,'
      'descansar e reproduzir), de acumular recursos de toda a espécie e de ser cauteloso ao dispender estes recursos.\n'
      'O segundo fator é o Sonho. Neste aspecto, fazemos referência ao desejo'
      'de criar, de construir, de inovar, de deixar fluir uma ideia e auxiliá-la a se desenvolver.'
      'É inerente às pessoas e à própria humanidade o sonho, ele nos trouxe a atual civilização\n';

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
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Text(
                  "Sonho e Sobrevivençia",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                firstText,
                style: Theme.of(context).textTheme.body1,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            )),
            Container(
              height: 250,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('images/transp_sonho.png'),
                    fit: BoxFit.fill),
              ),
            ),
            NavigationButton()
          ],
        ));
  }
}
