import 'package:flutter/material.dart';

class SMAobjetivos extends StatefulWidget {
  @override
  _SMAobjetivosState createState() => _SMAobjetivosState();
}

class _SMAobjetivosState extends State<SMAobjetivos>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _value = 'PEQ';
  List<Widget> filterList = [];
  final competenciasMap = {
    "SA.1 A unidade de negócio conheçe e cumpre as exigências formais para seu"
        "funcionamento.": ["PEQ", "MED", "GRD"],
    "SA.2 Resíduos que causem impacto ambiental e/ou social tem destinação "
        "apropriada": ["PEQ", "MED", "GRD"],
    "SA.3 Princípios do associativismo e cooperativismo são disseminados e fomentados":
        ["PEQ", "MED", "GRD"],
    "SA.4 A responsabilidade social e ações sócio-culturais são fomentadas": [
      "PEQ",
      "MED",
      "GRD"
    ],
    "SA.5 As missões da unidade de negócio, bem como a sua cultura organizacional é "
        " disseminada.": ["MED", "GRD"],
    "SA.6 A eficiência energética e hídrica é considerada no desenvolvimento das"
        "atividades.": ["MED", "GRD"],
    "SA.7 Os impactos ambientais e/ou sociais negativos são conhecidos e ações de"
        "contingenciamento e mitigação são planejadas e realizadas.": ["GRD"],
    "SA.8 Acordos são realizados com fornecedores relevantes.": ["GRD"],
    "SA.9 Legislação ambiental e trabalhista está sendo cumprida. (Este objetivo é "
        "opcional para unidades de negócio que não possuam legislação associada)":
        ["GRD"]
  };
  final excelenciaMap = {
    "SA.E0 Nenhum objetivo da competência de Sociedade e Ambiente está sendo"
        "cumprido.": ['0 Estrelas'],
    "SA.E1 Alguns dos objetivos da competência de Sociedade e Ambiente estão "
        "sendo cumpridos.": [
      '1 Estrela',
      '2 Estrelas',
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "SA.E2 Todos dos objetivos da competência de Sociedade e Ambiente estão sendo "
        "cumpridos.": ['2 Estrelas', '3 Estrelas', '4 Estrelas', '5 Estrelas'],
    "SA.E3a Itens relevantes utilizados e gerados da execução das práticas de"
        "Sociedade e Ambiente são controlados.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "SA.E3b As práticas de Sociedade e Ambiente são auditadas.": [
      '3 Estrelas',
      '4 Estrelas',
      '5 Estrelas'
    ],
    "SA.E4a As práticas de Sociedade e Ambiente são planejadas.": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "SA.E4b A execução das práticas da competência de Sociedade e Ambiente é"
        "monitorada e controlada.": ['4 Estrelas', '5 Estrelas'],
    "SA.E4c A eficácia e eficiência da execução das práticas de Sociedade e Ambiente"
        "são analisadas em relação a indicadores com metas estabelecidas": [
      '4 Estrelas',
      '5 Estrelas'
    ],
    "SA.E5a Padrões (ativos) para a execução das práticas da competência de "
        "Sociedade e Ambiente são estabelecidos, controlados e mantidos.": [
      '5 Estrelas'
    ],
    "SA.E5b Melhorias nos padrões (ativos) da competência de Sociedade e"
        "Ambiente são identificadas, priorizadas, selecionadas e realizadas de forma "
        "sistemática e controlada.": ['5 Estrelas']
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
