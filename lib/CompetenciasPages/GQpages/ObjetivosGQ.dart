import 'package:flutter/material.dart';

import 'GQObjComp.dart';

class GQobjetivos extends StatefulWidget {
  @override
  _GQobjetivosState createState() => _GQobjetivosState();
}

class _GQobjetivosState extends State<GQobjetivos>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _value = 'PEQ';
  List<Widget> filterList = [];
  final competenciasMap = {
    "GQ.1 Estruturas básicas para a gestão da unidade de negócio são estabelecidas e"
        "mantidas.": ["PEQ", "MED", "GRD"],
    "GQ.2 Abordagens para gestão de equipes da unidade de negócio são estabelecidas e"
        "mantidas.": ["PEQ", "MED", "GRD"],
    "GQ.3 Os bens e/ou serviços gerados pela unidade de negócio são verificados.":
        ["PEQ", "MED", "GRD"],
    "GQ.4 Melhorias são identificadas e implementadas.": ["PEQ", "MED", "GRD"],
    "GQ.5 A produção de bens e/ou serviços é detalhada em relação aos portfólios.":
        ["MED", "GRD"],
    "GQ.6 Abordagens para a gestão da unidade de negócio são detalhadas, estabelecidas"
        "e mantidas.": ["MED", "GRD"],
    "GQ.7 Controles da qualidade dos bens e serviços são estabelecidos e mantidos.":
        ["MED", "GRD"],
    "GQ.8 A capacidade de produção dos bens e/ou serviços é garantida para os clientes.":
        ["GRD"],
    "GQ.9 Estabelecer e manter uma estratégia para o gerenciamento de riscos"
        "relacionados à gestão e produção de bens e serviços.": ["GRD"]
  };
  final excelenciaMap = {
    "GQ.E0 Nenhum objetivo da competência de Gestão e Qualidade está sendo"
        "cumprido.": ['0 Estrelas'],
    "GQ.E1 Alguns dos objetivos da competência de Gestão e Qualidade estão sendo"
        "cumpridos.": [
      '1 Estrela',
      '2 Estrelas',
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "GQ.E2 Todos dos objetivos da competência de Gestão e Qualidade estão sendo"
        "cumpridos.": ['2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "GQ.E3a Itens relevantes utilizados e gerados da execução das práticas de Gestão"
        "e Qualidade são controlados.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "GQ.E3b As práticas de Gestão e Qualidade são auditadas.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "GQ.E4a As práticas de Gestão e Qualidade são planejadas.": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "GQ.E4b A execução das práticas da competência de Gestão e Qualidade é"
        "monitorada e controlada.": ['4 Estrelas', '5 Estrelas'],
    "GQ.E4c A eficácia e eficiência da execução das práticas de Gestão e Qualidade"
        "são analisadas em relação a indicadores com metas estabelecidas": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "GQ.E5a Padrões (ativos) para a execução das práticas da competência de Gestão"
        "e Qualidade são estabelecidos, controlados e mantidos.": [
      '5 Estrelas'
    ],
    "GQ.E5b Melhorias nos padrões (ativos) da competência de Gestão e Qualidade"
        "são identificadas, priorizadas, selecionadas e realizadas de forma sistemática e"
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
                      builder: (context) => GQCompetencia(competencia: key)));
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
