import 'package:flutter/material.dart';

class THobjetivos extends StatefulWidget {
  @override
  _THobjetivosState createState() => _THobjetivosState();
}

class _THobjetivosState extends State<THobjetivos>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _value = 'PEQ';
  List<Widget> filterList = [];
  final competenciasMap = {
    "TH.1 Papéis e responsabilidades dos colaboradores são definidos,comunicados e aprovados.":
        ["PEQ", "MED", "GRD"],
    "TH.2 Necessidades de capacitação são identificadas e tratadas.": [
      "PEQ",
      "MED",
      "GRD"
    ],
    "TH.3 Os colaboradores são comunicados de suas metas e motivadosa alcançá-los.":
        ["PEQ", "MED", "GRD"],
    "TH.4 Ações para o bem-estar, valorização e satisfação dos colaboradores são promovidas.":
        ["PEQ", "MED", "GRD"],
    "TH.5 Planos de cargos, carreiras e salários são estabelecidos e mantidos.":
        ["MED", "GRD"],
    "TH.6 Programas (e/ou ações) de capacitação e ações motivacionais"
        "para o cumprimento das metas são estabelecidos e mantidos.": [
      "MED",
      "GRD"
    ],
    "TH.7 Participações nos resultados da unidade de negócio são"
        "realizadas para os colaboradores e/ou equipes.": ["GRD"],
    "TH.8 Análises do impacto dos programas (e/ou ações) de"
        "capacitação são realizadas.": ["GRD"],
    "TH.9 A contratação de pessoas com deficiências é tratada com zelo"
        "e prioridade.": ["GRD"]
  };
  final excelenciaMap = {
    "TH.E0 Nenhum objetivo da competência de Talento Humano está sendo cumprido.":
        ['0 Estrelas'],
    "TH.E1 Alguns dos objetivos da competência de Talento Humano estão sendo cumpridos.":
        ['1 Estrela', '2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "TH.E2 Todos dos objetivos da competência de Talento Humano estão sendo"
        "cumpridos.": ['2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "TH.E3a Itens relevantes utilizados e gerados da execução das práticas de Talento"
        "Humano são controlados.": ['3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "TH.E3b As práticas de Talento Humano são auditadas.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "TH.E4a As práticas de Talento Humano são planejadas.": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "TH.E4b A execução das práticas da competência de Talento Humano é"
        "monitorada e controlada.": ['4 Estrelas', '5 Estrelas'],
    "TH.E4c A eficácia e eficiência da execução das práticas de Talento Humano são"
        "analisadas em relação a indicadores com metas estabelecidas": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "THE.5a Padrões (ativos) para a execução das práticas da competência de Talento"
        "Humano são estabelecidos, controlados e mantidos.": ['5 Estrelas'],
    "THE.5b Melhorias nos padrões (ativos) da competência de Talento Humano são"
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
            onTap: () {},
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
