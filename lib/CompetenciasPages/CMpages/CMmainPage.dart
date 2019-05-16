import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

class mainPageCM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Competencias"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Scrollbar(
                child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Text(
                      "Cliente e Mercado",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'A dimensão de capacidade de Cliente e Mercado tem como foco principal'
                        'a relação entre a unidade de negócio e seus clientes (internos ou externos ao empreendimento).'
                        'As relações são estabelecidas através de acordos (formais ou informais) '
                        'e mecanismos para atendimento e relacionamento. Os acordos estabelecem '
                        'os compromissos firmados entre a unidade de negócio e seus clientes. Os sistemas '
                        'de atendimento e relacionamento são responsáveis por receber as solicitações '
                        'dos clientes, entregar os bens e serviços solicitados, tratar os incidentes, perceber '
                        'como a unidade de negócio é “vista” pelos clientes e qual o valor que os '
                        'bens e serviços entregam a estes. A venda dos bens e/ou serviços é outro aspecto '
                        'abordado em Cliente e Mercado. \n'
                        'A dimensão de Cliente e Mercado do MOSE tem por finalidade apoiar a'
                        'unidade de negócio na resolução de problemas como:',
                    textAlign: TextAlign.justify,
                  ),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Não compreensão dos objetivos de negócio"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Desgastes com clientes por ausência de acordos claros em relação aos"
                      "bens e serviços que são fornecidos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Falta (ou ineficácia) força de vendas;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Vendas precárias e imprevisíveis;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Perda de clientes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldades na compreensão do mercado em que atua;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Ausência de (ou superficialidade) visão do futuro realístico do negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de clareza em relação aos bens e serviços que são fornecidos pela"
                      "unidade de negócio (tanto internamente quanto em relação ao mercado);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de compreensão da concorrência e dos impactos que ela pode causar"
                      "ao negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda de (ou desgastes com) clientes por problemas na entrega dos bens"
                      "e serviços;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda de (ou desgastes com) clientes por se relacionar precariamente"
                      "com os mesmos, não respondendo adequadamente a suas dificuldades em relação"
                      "aos bens e/ou serviços que receberam;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Clientes insatisfeitos por falta de cumprimento (ou não clareza) dos acordos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Clientes insatisfeitos pela entrega de bens e/ou serviços que não atendem"
                      "as suas expectativas;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Inadimplência alta e a não compreensão dos por ques;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta da percepção de quais clientes não devem ser mais atendidos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta da percepção de quais bens e/ou produtos não devem mais estar no"
                      "portfólio da unidade de negócio"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Falta de comunicação com o público-alvo;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Marketing ineficiente;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de preparação para tratar incidentes que ocorrem, incluindo a falta"
                      "de tratamento de incidentes recorrentes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Não conhecimento da disponibilidade de atendimento da unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de preparação para tratar incidentes que ocorrem, incluindo a falta"
                      "de tratamento de incidentes recorrentes."),
                ),
                Container(
                  height: 250,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            ExactAssetImage('images/CMCompetenciasFluxo.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            )),
          ),
          NavigationButton()
        ],
      ),
    );
  }
}
