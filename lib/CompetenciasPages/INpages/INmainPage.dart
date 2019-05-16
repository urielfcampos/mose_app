import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

class mainPageIN extends StatelessWidget {
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
                      "Inovação",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'A dimensão de capacidade de Inovação irá abordar temas relacionadas à'
                        'observação de oportunidade e problemas no mercado, sua análise e o tratamento'
                        'dos mesmos até uma possível incorporação ao negócio, zelando pela sustentabilidade'
                        'do empreendimento e tendo cuidados com a propriedade intelectual, quando'
                        'pertinente.'
                        'A dimensão de competência de Inovação do MOSE tem por finalidade'
                        'apoiar a unidade de negócio na resolução de problemas como:',
                    textAlign: TextAlign.justify,
                  ),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Perda de oportunidades no mercado;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de capacidade de identificar problemas no mercado e se antecipar na"
                      "resolução dos mesmos, gerando oportunidades de novos negócios e a melhoria"
                      "dos negócios existentes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda de clientes por falta de inovação nos bens e serviços que fornece;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda de clientes por falhas na transição das mudanças na oferta de bens"
                      "e serviços;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title:
                      Text("Dificuldades em ampliar a carteira de clientes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de aproveitamento das boas ideias que foram produzidas pelos colaboradores"
                      "(em relação ao negócio e em relação às atividades de produção);"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Baixa produtividade;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Colaboradores desmotivados e apáticos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta de compreensão por parte dos colaboradores do mercado em que"
                      "atuam e consequente baixa qualidade nos bens e serviços que produzem;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Descontrole no uso de recursos (e perdas financeiras) com a mudança"
                      "nos bens e serviços que fornecem e que não é bem aceita pelos clientes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Descontrole no uso de recursos (e perdas financeiras) em relação à criação"
                      "de novos negócios que sucumbem;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldade em se ajustar às novas tecnologias ou novos modelos de negócio;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Incapacidade de se antecipar (ou acompanhar) os aprimoramentos tecnológicos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldade em tomadas de decisão a respeito de onde e como investir"
                      "em Inovações para o empreendimento"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta da percepção de quais clientes não devem ser mais atendidos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Resistência dos colaboradores em aderir a ações de evolução técnica e inovação;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Roubo e uso indevido da inovação que foi gerada pela unidade de negócio"
                      "por pessoas não autorizadas"),
                ),
                Container(
                  height: 250,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('images/INCompetenciaFluxo.png'),
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
