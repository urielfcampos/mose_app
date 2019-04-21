import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About7 extends StatelessWidget {
  final List<String> bulletPoints = [
    'o MOSE possui 5 dimensões de competência:\n'
        'Talento Humano, Gestão e Qualidade, Cliente e Mercado, Inovação e Sociedade e Meio Ambiente.\n Ao executar '
        'práticas (atividades) dentro de um empreendimento, os colaboradores vão se tornando mais hábeis, ou seja, adquirem uma '
        'maior capacidade. A esta capacidade, vinculada às recomendações dos objetivos do MOSE, denominamos níveis de excelência. ',
    'Nível 0 - Inexistente - significa que a unidade organizacional não satisfaz'
        'nenhuma recomendação do MOSE para a dimensão observada'
        'Nível 1 - Incompleto - significa que a unidade de negócio realiza ALGUMAS '
        'recomendações do MOSE para a dimensão observada',
    'Nível 2 - Executado - significa que a unidade de negócio realiza TODAS '
        'as recomendações do MOSE para a dimensão observada;',
    'Nível 3 - Controlado - significa que a unidade de negócio executa TODAS '
        'as recomendações do MOSE e garante que elas estão sendo executadas'
        'e que, estão sendo controlados os itens relevantes',
    'Nível 4 - Gerenciado - significa que a unidade de negócio, além de executar '
        'TODAS as recomendações do MOSE para a dimensão observada, os colaboradores'
        'da unidade de negócio planejam, monitoram e controlam a execução destas recomendações;',
    'Nível 5 - Melhorando Sistematicamente - significa que a unidade de negócio '
        'já executou tantas vezes as recomendações do MOSE para a dimensão '
        'observada que agora registra estas lições aprendidas no formato de ativos.',
    'Similarmente ao padrão adotado no ramo de hotelaria, uma unidade de '
        'negócio pode ser categorizada de 0 a 5 estrelas, baseando-se nos níveis de excelência '
        'alcançados pelas dimensões de competências. Como as 5 dimensões do MOSE '
        'possuem o mesmo grau de importância, uma unidade de negócios somente '
        'chega a uma determinada categoria se tiver alcançado pelo menos o mesmo nível de '
        'excelência em TODAS as suas competências. '
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
                  "Níveis de Excelência",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Container(
              height: 200,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        ExactAssetImage('images/MoseCompetencias_transp.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext cntx, int index) {
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
                                                'o MOSE possui 5 dimensões de competência:\n'
                                                'Talento Humano, Gestão e Qualidade, Cliente e Mercado, Inovação e Sociedade e Meio Ambiente.\n Ao executar '
                                                'práticas (atividades) dentro de um empreendimento, os colaboradores vão se tornando mais hábeis, ou seja, adquirem uma '
                                                'maior capacidade. A esta capacidade, vinculada às recomendações dos objetivos do MOSE, denominamos '),
                                        TextSpan(
                                            text: 'níveis de excelência. \n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text: "\nNível 0 - Inexistente",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' - significa que a unidade organizacional não satisfaz '
                                                'nenhuma recomendação do MOSE para a dimensão observada'),
                                        TextSpan(
                                            text: "\nNível 1 - Incompleto ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' - significa que a unidade de negócio realiza ALGUMAS '
                                                'recomendações do MOSE para a dimensão observada'),
                                        TextSpan(
                                            text: "\nNível 2 - Executado ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                '- significa que a unidade de negócio realiza TODAS '
                                                'as recomendações do MOSE para a dimensão observada;'),
                                        TextSpan(
                                            text: "\nNível 3 - Controlado ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                '- significa que a unidade de negócio executa TODAS '
                                                'as recomendações do MOSE e garante que elas estão sendo executadas'
                                                'e que, estão sendo controlados os itens relevantes'),
                                        TextSpan(
                                            text: "\nNível 4 - Gerenciado ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                '- significa que a unidade de negócio, além de executar '
                                                'TODAS as recomendações do MOSE para a dimensão observada, os colaboradores'
                                                'da unidade de negócio planejam, monitoram e controlam a execução destas recomendações;'),
                                        TextSpan(
                                            text:
                                                "\nNível 5 - Melhorando Sistematicamente ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                ' - significa que a unidade de negócio '
                                                'já executou tantas vezes as recomendações do MOSE para a dimensão '
                                                'observada que agora registra estas lições aprendidas no formato de ativos.'),
                                        TextSpan(
                                            text:
                                                '\nSimilarmente ao padrão adotado no ramo de hotelaria, uma unidade de '
                                                'negócio pode ser categorizada de '),
                                        TextSpan(
                                            text: "0 a 5 estrelas ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text:
                                                'baseando-se nos níveis de excelência '
                                                'alcançados pelas dimensões de competências. Como as 5 dimensões do MOSE '
                                                'possuem o mesmo grau de importância, uma unidade de negócios somente '
                                                'chega a uma determinada categoria se tiver alcançado pelo menos o mesmo nível de '
                                                'excelência em'),
                                        TextSpan(
                                            text: ' TODAS ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' as suas competências. ')
                                      ]))));
                    }),
              ),
            ),
            NavigationButton()
          ],
        ));
  }
}
