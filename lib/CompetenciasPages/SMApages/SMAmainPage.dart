import 'package:flutter/material.dart';

import 'NavigationDropdownButton.dart';

class mainPageSMA extends StatelessWidget {
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
                      "Sociedade e Ambiente",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'dimensão de Sociedade e Ambiente do MOSE aborda dois aspectos externos'
                        'a unidade de negócio: a sociedade na qual está inserida e a responsabilidade'
                        'ambiental. O primeiro aspecto trata de temas como: associativismo, cooperação,'
                        'responsabilidade social, cultura, esporte, educação, desenvolvimento de'
                        'ações sociais, entre outros. O segundo aspecto aborda temas como: cuidados'
                        'com os impactos ao meio ambiente, eficiência energética, entre outros.'
                        'A dimensão de competência de Sociedade e Meio Ambiente do MOSE tem'
                        'por finalidade apoiar a unidade de negócio na resolução de problemas como',
                    textAlign: TextAlign.justify,
                  ),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Documentação exigida para o funcionamento da unidade de negócio (e/"
                      "ou empreendimento) estão desatualizadas ou inexistem;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Certidões e autorizações importantes para a continuidade do negócio estão"
                      "desatualizadas e/ou inválidas, incluindo o desconhecimento do fato por"
                      "parte dos interessados;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Impostos estão atrasados ou não sendo pagos e é de desconhecimento"
                      "dos interessados;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda de negócio por falta de documentação relevante;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta (ou completa ausência) da definição da missão da unidade de negócio,"
                      "ocasionando visões distorcidas entre empreendedores, colaboradores e"
                      "clientes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perda financeira ou de negócios pela não formalização de acordos com fornecedores"
                      "relevantes;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Dificuldade de enfrentar ameaças externas a unidade de negócio por se"
                      "manter isolada;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta (ou completa ausência) do sentimento de estar fazendo parte e colaborar"
                      "com o desenvolvimento social e humano;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Colaboradores desmotivados e apáticos;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text("Colaboradores se sentindo desvalorizados"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Falta (ou complete ausência) de preocupação com os impactos sociais e"
                      "ambientais que a unidade de negócios causa em seu ambiente de atuação;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perdas financeiras por falta de cuidados com a eficiência energética;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Perdas financeiras por pagamento de multas pelo não cumprimentos das"
                      "leis sociais e ambientais;"),
                ),
                ListTile(
                  leading: Text("✦"),
                  title: Text(
                      "Rejeição por parte de clientes por não ser uma unidade de negócios que"
                      "aborda responsabilidade social e ambiental;"),
                ),
                Container(
                  height: 250,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            ExactAssetImage('images/SMACompetenciasFluxo.png'),
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
