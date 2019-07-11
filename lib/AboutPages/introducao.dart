import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

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
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewport) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: viewport.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
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
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    style: Theme.of(context).textTheme.body1,
                                    children: generateTextSpan())))),
                    NavigationButton()
                  ],
                ),
              ),
            ),
          );
        }));
  }

  List<TextSpan> generateTextSpan() {
    List<TextSpan> BulletPoint = [];
    bulletPoints.forEach(
        (element) => {BulletPoint.add(TextSpan(text: "✦" + element + '\n'))});
    return BulletPoint;
  }
}
