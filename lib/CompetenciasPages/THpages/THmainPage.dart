import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

class mainPageTH extends StatelessWidget {
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
                      "Talento Humano",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'A dimensão de capacidade de Talento Humano apoia a formação de uma cultura'
                        ' na qual as pessoas buscam alcançar o máximo de eficiência no desenvolvimento'
                        ' de suas atividades, tornando-se parte ativa do processo criativo e da evolução do'
                        ' próprio negócio.\n'
                        'A dimensão de competência de Talento Humano do MOSE tem por finalidade'
                        ' apoiar a unidade de negócio na resolução de problemas como:',
                    textAlign: TextAlign.justify,
                  ),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de compreensão em relação às responsabilidades de cada colaborador"
                      "e das equipes que trabalham na unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Conflitos e desgastes entre os colaboradores decorrentes de atividades"
                      "que deixam de ser realizadas (empurra-empurra);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Altos custos com pessoal, sem entender o valor do capital humano que"
                      "trabalha na unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title:
                      Text("Falta de (ou pouca) colaboração entre as pessoas;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Pessoas realizando atividades para as quais não estão qualificadas, causando"
                      " problemas como: desgaste com os clientes, retrabalho, baixa produtividade,"
                      " baixa qualidade dos bens e serviços produzidos, entre outros;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Altos custos (ou ineficiência) de treinamentos realizados, sem compreensão"
                      "do real retorno destes para o negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Ausência da percepção, por parte dos colaboradores, dos prejuízos causados"
                      "por suas atitudes e comportamentos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Alta rotatividade de colaboradores (demissões e admissões);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de disseminação do conhecimento adquirido entre os colaboradores;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Colaboradores desmotivados e desleixados;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de visão de futuro dos colaboradores em relação a sua vida profissional"
                      "ao trabalhar na unidade de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Insatisfação dos colaboradores em relação ao trabalho realizado e ao próprio"
                      "negócio, podendo chegar a uma completa alienação;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de envolvimento do colaborador em relação aos resultados esperados"
                      "para o negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Sentimento de trabalhar em um local ao qual não deveria pertencer;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Sentimento de trabalhar em algo que não contribui com o bem da sociedade"
                      "e, portanto, não tem muita relevância;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Sentimento dos colaboradores de que a remuneração recebida não é justa;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de clareza em relação à capacitação que os colaboradores necessitam"
                      "e quais podem resultar em efetiva melhoria para o negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Inexistência de análises do retorno do investimento em relação a pessoal"
    "e sua capacitação;"),
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
