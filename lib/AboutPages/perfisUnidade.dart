import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About6 extends StatelessWidget {
  String text =
      'o MOSE se propõe a auxiliar especialmente (mas não restritamente) o desenvolvimento de unidades de negócio que '
      'possuam de 2 a 70 colaboradores, considerando três perfis: PEQUENO (PEQ), MEDIO (MED) e GRANDE (GRD). \n'
      '\nO Perfil Pequeno (PEQ) é comumente representado por unidades de negócio que possuem de 2 a 15 colaboradores e '
      'representam empreendimentos que normalmente, mas não restrito a, se encontram em estágios iniciais do '
      'negócio,demandando urgência para a sua própria sobrevivência. \n'
      '\nO Perfil Médio (MED) é comumente representado por unidades de negócio cuja equipe varia '
      'de 15 a 45 pessoas que já contam com alguma história de trabalho e serviços, com alguns '
      'casos de insucesso e sucesso.Este tipo de perfil se aplica principalmente a unidades de '
      'negócio emergentes e geralmente possui uma carteira de clientes (internos ou externos) diversificada e consolidada que lhe dá certa estabilidade. \n'
      '\nO Perfil Grande (GRD) é comumente representado por unidades de negócio '
      'que possuem de 45 a 70 colaboradores. Nestas unidades de negócio, além '
      'de desenvolver os aspectos gerenciais, existe mais a necessidade por desenvolvimento '
      'de padronização de processos para melhoria de seu desempenho. ';

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
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Text(
                  'Perfis das Unidades de Negócio',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext cntx, index) {
                      return ListTile(
                          title: Padding(
                              padding: EdgeInsets.all(10),
                              child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: Theme.of(context).textTheme.body1,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'o MOSE se propõe a auxiliar especialmente (mas não restritamente) o desenvolvimento de unidades de negócio que '
                                                'possuam de 2 a 70 colaboradores, considerando três perfis: '),
                                        TextSpan(
                                            text:
                                                'PEQUENO (PEQ), MEDIO (MED) e GRANDE (GRD). \n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text: "\nO Perfil Pequeno (PEQ)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' é comumente representado por unidades de negócio que possuem de 2 a 15 colaboradores e '
                                                'representam empreendimentos que normalmente, mas não restrito a, se encontram em estágios iniciais do '
                                                'negócio,demandando urgência para a sua própria sobrevivência. \n'),
                                        TextSpan(
                                            text: "\nO Perfil Médio (MED)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' é comumente representado por unidades de negócio cuja equipe varia '
                                                'de 15 a 45 pessoas que já contam com alguma história de trabalho e serviços, com alguns '
                                                'casos de insucesso e sucesso.Este tipo de perfil se aplica principalmente a unidades de '
                                                'negócio emergentes e geralmente possui uma carteira de clientes (internos ou externos) diversificada e consolidada que lhe dá certa estabilidade. \n'),
                                        TextSpan(
                                            text: "\nO Perfil Grande (GRD)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' é comumente representado por unidades de negócio '
                                                'que possuem de 45 a 70 colaboradores. Nestas unidades de negócio, além '
                                                'de desenvolver os aspectos gerenciais, existe mais a necessidade por desenvolvimento '
                                                'de padronização de processos para melhoria de seu desempenho. '),
                                      ]))));
                    }),
              ),
            ),
            NavigationButton()
          ],
        ));
  }
}
