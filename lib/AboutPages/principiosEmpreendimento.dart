import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About3 extends StatelessWidget {
  final List<String> bulletPoints = [
    "1º Princípio: Gerar abundância",
    "2º Princípio: O altruísmo",
    "3º Princípio: causa e efeito",
    "4º Princípio: Somos todos um",
    "5º Princípio: Saia da zona de conforto",
    "Crescimento desestruturado",
    "Inércia",
    "Cultura organizacional ultrapassada"
  ];

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
                  "Princípios para o Sucesso de um Empreendimento",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: bulletPoints.length,
                    itemBuilder: (BuildContext cntx, int index) {
                      return ListTile(
                          leading: Text("✦"),
                          title: Text(
                            bulletPoints[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ));
                    }),
              ),
            ),
            NavigationButton()
          ],
        ));
  }
}
