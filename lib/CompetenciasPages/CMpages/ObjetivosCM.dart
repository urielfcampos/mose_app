import 'package:flutter/material.dart';

class CMobjetivos extends StatefulWidget {
  @override
  _CMobjetivosState createState() => _CMobjetivosState();
}

class _CMobjetivosState extends State<CMobjetivos>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _value = 'PEQ';
  List<Widget> filterList = [];
  final competenciasMap = {
    "CM.1 Acordos e/ou contratos com os clientes são estabelecidos e gerenciados.":
        ["PEQ", "MED", "GRD"],
    "CM.2 Vendas de bens e/ou serviços são realizadas.": ["PEQ", "MED", "GRD"],
    "CM.3 Atendimentos aos clientes são realizados.": ["PEQ", "MED", "GRD"],
    "CM.4 O Relacionamento com os clientes é realizado.": ["PEQ", "MED", "GRD"],
    "CM.5 Os bens e/ou serviços principais são organizados em portfólios.": [
      "MED",
      "GRD"
    ],
    "CM.6 Prospecção e vendas são detalhadas considerando os bens e/ou serviços do"
        "portfólio."
        "e mantidas.": ["MED", "GRD"],
    "CM.7 Abordagens para o atendimento aos clientes são estabelecidas e mantidas.":
        ["GRD"],
    "CM.8 Abordagens para o relacionamento com os clientes são estabelecidas e"
        "mantidas.": ["GRD"],
    "CM.9 Incidentes são registrados, analisados e ações preventivas são estabelecidas":
        ["GRD"]
  };
  final excelenciaMap = {
    "CM.E0 Nenhum objetivo da competência de Cliente e Mercado está sendo"
        "cumprido.": ['0 Estrelas'],
    "CM.E1 Alguns dos objetivos da competência de Cliente e Mercado estão sendo"
        "cumpridos.": [
      '1 Estrela',
      '2 Estrelas',
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "CM.E2 Todos dos objetivos da competência de Cliente e Mercado estão sendo"
        "cumpridos.": ['2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "CM.E3a Itens relevantes utilizados e gerados da execução das práticas de Cliente "
        "e Mercado são controlados.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "CM.E3b As práticas de Cliente e Mercado são auditadas.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "CM.E4a As práticas de Cliente e Mercado são planejadas.": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "CM.E4b A execução das práticas da competência de Cliente e Mercado é "
        "monitorada e controlada.": ['4 Estrelas', '5 Estrelas'],
    "CM.E4c A eficácia e eficiência da execução das práticas de Cliente e Mercado são"
        "analisadas em relação a indicadores com metas estabelecidas": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "CM.E5a Padrões (ativos) para a execução das práticas da competência de Cliente"
        "e Mercado são estabelecidos, controlados e mantidos.": ['5 Estrelas'],
    "CM.E5b Melhorias nos padrões (ativos) da competência de Cliente e Mercado"
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
