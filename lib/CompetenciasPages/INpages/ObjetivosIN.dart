import 'package:flutter/material.dart';

import 'INObjComp.dart';

class INobjetivos extends StatefulWidget {
  @override
  _INobjetivosState createState() => _INobjetivosState();
}

class _INobjetivosState extends State<INobjetivos>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _value = 'PEQ';
  List<Widget> filterList = [];
  final competenciasMap = {
    "IN.1 Oportunidades e/ou problemas são identificados.": [
      "PEQ",
      "MED",
      "GRD"
    ],
    "IN.2 Ideias e cenários de como atender as oportunidades e/ou resolver os problemas"
        "identificados são desenvolvidos.": ["PEQ", "MED", "GRD"],
    "IN.3 Ideias e os cenários desenvolvidos são analisados, priorizados e selecionados"
        "para execução.": ["PEQ", "MED", "GRD"],
    "IN.4 Ideias e cenários selecionados são executados e incorporados ao negócio.":
        ["PEQ", "MED", "GRD"],
    "IN.5 Abordagens para criação de novos negócios são estabelecidas e mantidas.":
        ["MED", "GRD"],
    "IN.6 Análises de portfólios (internos e externos) são realizadas."
        "e mantidas.": ["MED", "GRD"],
    "IN.7 A Transição da inovação aprovada é realizada.": ["MED", "GRD"],
    "IN.8 O retorno do investimento em inovação é medido e analisado historicamente.":
        ["GRD"],
    "IN.9 O registro e gerenciamento da propriedade intelectual é considerado com zelo e"
        "prioridade.": ["GRD"]
  };
  final excelenciaMap = {
    "IN.E0 Nenhum objetivo da competência de Inovação está sendo cumprido.": [
      '0 Estrelas'
    ],
    "IN.E1 Alguns dos objetivos da competência de Inovação estão sendo cumpridos"
        "cumpridos.": [
      '1 Estrela',
      '2 Estrelas',
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "IN.E2 Todos dos objetivos da competência de Inovação estão sendo cumpridos.":
        ['2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "IN.E3a Itens relevantes utilizados e gerados da execução das práticas de"
        "Inovação são controlados.": ['3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "IN.E3b As práticas de Inovação são auditadas": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "IN.E4a As práticas de Inovação são planejadas.": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "IN.E4b A execução das práticas da competência de Inovação é monitorada e"
        "controlada.": ['4 Estrelas', '5 Estrelas'],
    "IN.E4c A eficácia e eficiência da execução das práticas de Inovação são"
        "analisadas em relação a indicadores com metas estabelecidas": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "IN.E5a Padrões (ativos) para a execução das práticas da competência de"
        "Inovação são estabelecidos, controlados e mantidos.": ['5 Estrelas'],
    "IN.E5b Melhorias nos padrões (ativos) da competência de Inovação são"
        "identificadas, priorizadas, selecionadas e realizadas de forma sistemática e"
        "controlada.": ['5 Estrelas']
  };

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    getFilteredObjetivos(competenciasMap, _value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOSE"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
            onTap: (int index) {
              if (index == 0) {
                setState(() {
                  getFilteredObjetivos(competenciasMap, "PEQ");
                  _value = "PEQ";
                });
              }
              if (index == 1) {
                setState(() {
                  getFilteredObjetivos(excelenciaMap, '0 Estrelas');
                  _value = "0 Estrelas";
                });
              }
            },
            controller: _tabController,
            tabs: [
              Tab(
                text: "Objetivos de Competencia",
              ),
              Tab(
                text: "Objetivos de Excelencia",
              )
            ]),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: TabBarView(
            controller: _tabController,
            children: <Widget>[getCompetenciasTab(), getExcelenciaTab()]),
      ),
    );
  }

  Widget getExcelenciaTab() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Expanded(
        child: renderFilterList(),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.blue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: null,
                  hint: Text(
                    _value,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (String newValue) {
                    setState(() {
                      _value = newValue;
                      getFilteredObjetivos(excelenciaMap, newValue);
                    });
                  },
                  items: <String>[
                    '0 Estrelas',
                    '1 Estrela',
                    '2 Estrelas',
                    '3 Estrelas',
                    '4 Estrelas',
                    '5 Estrelas'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                      value: value,
                    );
                  }).toList(),
                ),
              )),
            ],
          )),
    ]);
  }

  Widget getCompetenciasTab() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Expanded(
        child: renderFilterList(),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.blue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: null,
                  hint: Text(
                    _value,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (String newValue) {
                    setState(() {
                      _value = newValue;
                      getFilteredObjetivos(competenciasMap, newValue);
                    });
                  },
                  items: <String>['PEQ', 'MED', 'GRD']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                      value: value,
                    );
                  }).toList(),
                ),
              )),
            ],
          )),
    ]);
  }

  Widget renderFilterList() {
    return ListTileTheme(
      contentPadding: EdgeInsets.all(5),
      child: ListView.builder(
          itemCount: filterList.length,
          itemBuilder: (BuildContext cntx, int index) {
            return filterList[index];
          }),
    );
  }

  Widget getFilteredObjetivos(final filterMap, String filter) {
    if (filterList.isNotEmpty) {
      filterList.clear();
    }
    filterMap.forEach((key, value) {
      if (value.contains(filter)) {
        filterList.add(Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.blueAccent, width: 2),
                left: BorderSide(color: Colors.blueAccent, width: 2),
                right: BorderSide(color: Colors.blueAccent, width: 2)),
          ),
          child: ListTile(
            title: Text(key),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => INCompetencia(competencia: key)));
            },
            trailing: Icon(Icons.forward),
          ),
        ));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
