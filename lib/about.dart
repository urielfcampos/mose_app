import 'package:flutter/material.dart';

class About extends StatelessWidget {
  String firstText =
      "O MOSE foi desenvolvido com o objetivo de apoiar um empreendimento"
      "a se desenvolver de forma saudável, sobrevivendo e crescendo com capacidade"
      "para enfrentar o atual ambiente de negócios, cada vez mais competitivo.\n"
      "Considera-se \"empreendimento\" a ideia aplicada a qualquer atividade hu"
      "mana que tenha por objetivo produzir algum tipo de bem e/ou serviço."
      " Conseguimos identificar diversos problemas recorrentes nos empreendi"
      "mentos, dentre eles gostaríamos de destacar:";
  List<String> bulletPoints = ["Falta de visão de mercado", "Ausência de visibilidade",
  "Defasagem tecnológica","Mão de obra","Interferência externas","Crescimento desestruturado",
  "Inércia","Cultura organizacional ultrapassada"];

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
                "Introducao",
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
          Expanded(
            child: ListView.builder(
                itemCount: bulletPoints.length,
                itemBuilder: (BuildContext cntx, int index) {
                  return ListTile(
                      leading: Text("✦"),
                      title: Text(bulletPoints[index]));
                }),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 10, 80, 20),
            child: RaisedButton(
              child: Text(
                "Sonho e Sobrevivência",
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

        ],
      ),
    );
  }
}
