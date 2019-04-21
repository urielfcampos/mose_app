import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About2 extends StatelessWidget {
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
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: ' O fator '),
                              TextSpan(
                                  text: "sobrevivência ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text:
                                      "está ligado aos elementos da preservação de si mesmo"
                                      ', de sua integridade física, da satisfação das necessidades básicas (comer,beber,'
                                      'descansar e reproduzir), de acumular recursos de toda a espécie e de ser cauteloso ao dispender estes recursos.\n'),
                              TextSpan(text: "O segundo fator é o "),
                              TextSpan(
                                  text: "Sonho",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text:
                                      ' Neste aspecto, fazemos referência ao desejo'
                                      'de criar, de construir, de inovar, de deixar fluir uma ideia e auxiliá-la a se desenvolver.'
                                      'É inerente às pessoas e à própria humanidade o sonho, ele nos trouxe a atual civilização\n')
                            ])))),
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
