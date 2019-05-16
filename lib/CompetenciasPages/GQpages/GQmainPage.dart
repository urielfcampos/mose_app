import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

class mainPageGQ extends StatelessWidget {
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
                      "Gestão e Qualidade",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'A dimensão de competência de Gestão e Qualidade aborda dois aspectos '
                        'principais: (1) gestão da unidade de negócio e da produção de bens e serviços,'
                        '(2) qualidade dos bens e/ou serviços produzidos '
                        'A dimensão de competência de Gestão e Qualidade do MOSE tem por finalidade '
                        'apoiar a unidade de negócio na resolução de problemas como: ',
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
                      "Falta de visibilidade em relação ao sucesso ou insucesso da unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Ausência de (ou superficial) visão do futuro realístico do negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de compreensão da produtividade das equipes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldade na distribuição das atividades para os colaboradores;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de informações realísticas para a tomada de decisão (no âmbito de "
                      "negócio e de produção);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de compreensão sobre a responsabilidade de cada indivíduo (e equipes)"
                      "no processo de produção e também em relação ao negócio"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de entendimento sobre (e/ou incapacidade de garantir) a qualidade"
                      "dos bens e serviços produzidos ;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldades em atingir metas de negócio (ou mesmo ausência da definição"
                      "das metas);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldades em melhorar as atividades de gestão e produção;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Dificuldade em lidar com incertezas;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Não conhecimento da capacidade de produção da unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Dificuldades na priorização dos trabalhos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Sentimento de que o trabalho (atividades) nunca é finalizado e que nunca"
                      "o que é feito está bom;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Desperdício gerado por práticas ineficientes."),
                ),
                Container(
                  height: 250,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            ExactAssetImage('images/GQCompetenciasFluxo.png'),
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
