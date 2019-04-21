import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About extends StatelessWidget {
  String firstTextPart =
      "O MOSE foi desenvolvido com o objetivo de apoiar um empreendimento"
      "a se desenvolver de forma saudável, sobrevivendo e crescendo com capacidade"
      "para enfrentar o atual ambiente de negócios, cada vez mais competitivo. ";
  String boldedTextPart = "\"empreendimento\" ";
  String secondTextPart = "a ideia aplicada a qualquer atividade hu"
      "mana que tenha por objetivo produzir algum tipo de bem e/ou serviço.\n"
      " Conseguimos identificar diversos problemas recorrentes nos empreendi"
      "mentos, dentre eles gostaríamos de destacar:";
  final List<String> bulletPoints = [
    "Falta de visão de mercado",
    "Ausência de visibilidade",
    "Defasagem tecnológica",
    "Mão de obra",
    "Interferência externas",
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
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Text(
                  "INTRODUÇÃO",
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
                              TextSpan(text: firstTextPart),
                              TextSpan(
                                  text: boldedTextPart,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(text: secondTextPart),
                            ])))),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: bulletPoints.length,
                    padding: EdgeInsets.all(0),
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
