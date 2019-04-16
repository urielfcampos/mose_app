import 'package:flutter/material.dart';

import '../NavigationDropdownButton.dart';

class About8 extends StatelessWidget {
  final List<String> bulletPoints = [
    'A Finalidade e Descrição (da dimensão) descreve as razões pelas quais '
        'a dimensão de competência do MOSE foi criada e '
        'foi a base para a construção de todas as recomendações para a dimensão em questão.',
    'Os Objetivos da Competência detalham os objetivos que a unidade de'
        'negócio deve alcançar para atingir as competências do MOSE, ou seja,'
        'deve poder ser observado na unidade de negócio para alcançar uma determinada competência.',
    'Os Objetivos da Excelência detalham o quão bem e maduro (aptos) os'
        'objetivos da competência estão sendo executados na unidade de negócio, ou seja,'
        'estes objetivos incidem sobre os objetivos da competência observando, por '
        'exemplo:',
    '✦ se são executados ou não;',
    '✦ se há um planejamento, monitoramento e controle para sua execução ',
    '✦ se existem padrões para sua execução e se melhorias são implementadas '
        'para estes padrões.'
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
                  "Elementos da Base de Competência",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Container(
              height: 250,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(
                        'images/ComponentesCompetenciaMose_transp.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: bulletPoints.length,
                    itemBuilder: (BuildContext cntx, int index) {
                      return ListTile(
                          title: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          bulletPoints[index],
                          style: Theme.of(context).textTheme.body1,
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ));
                    }),
              ),
            ),
            NavigationButton()
          ],
        ));
  }
}
