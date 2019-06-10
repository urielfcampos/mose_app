import 'package:flutter/material.dart';

generateObjetivos(String Objetivos) {}

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
        body: ObjetivoList(competenciaName: this.competencia));
  }
}

class Objetivos {
  Objetivos({this.isExpanded: false, this.header, this.body});
  bool isExpanded;
  final String header;
  final String body;
}

class ObjetivoList extends StatefulWidget {
  final String competenciaName;
  ObjetivoList({this.competenciaName});
  Map<String, Map<String, String>> mapCompentences = {
    "TH.1": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os papéis e responsabilidades dos"
              "colaboradores da unidade de negócio do empreendimento estejam"
              "definidos, tenham sido comunicados a eles e os mesmos tenham"
              "aprovado as responsabilidades a eles atribuídas. É importante também"
              "que estejam claras para todos os colaboradores as responsabilidades de"
              "cada membro (ou de cada perfil de trabalho) para o desenvolvimento de"
              "suas atividades e a comunicação que deve ser realizada entre eles.",
      "exemploDePraticas": "",
      "IndicadoresObrigatorios": "",
      "OutrosIndicadores": ""
    }
  };
  @override
  _ObjetivoListState createState() => _ObjetivoListState();
}

class _ObjetivoListState extends State<ObjetivoList> {
  List<Objetivos> _objetivos = [];
  @override
  void initState() {
    String name = widget.competenciaName;
    print(name.substring(0, 4) == "TH.1");
    this._objetivos.add(Objetivos(
        header: widget.competenciaName,
        body: widget.mapCompentences[name.substring(0, 4)]
            ["resultadosEsperados"]));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _objetivos[index].isExpanded = !_objetivos[index].isExpanded;
            });
          },
          children: _objetivos.map((Objetivos objetivo) {
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text(objetivo.header);
                },
                isExpanded: objetivo.isExpanded,
                body: Container(
                  child: Text(objetivo.body),
                ));
          }).toList(),
        )
      ],
    );
  }
}
