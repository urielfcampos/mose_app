import 'package:flutter/material.dart';
import 'package:mose_app/AboutPages/NavigationDropdownButton.dart';

class About4 extends StatefulWidget {
  @override
  _About4State createState() => _About4State();
}

class _About4State extends State<About4> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

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
            Container(
              height: 76,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "DIMENSÕES DE COMPETÊNCIA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFFcea469)),
            ),
            Container(
              height: 90,
              child: TabBar(controller: _controller, tabs: [
                Tab(
                  icon: Icon(
                    Icons.people,
                    color: Colors.red,
                  ),
                  child: Text(
                    "Talento\n Humano",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.assessment,
                    color: Color(0xFF9b6526),
                  ),
                  child: Text(
                    "Gestao\n e\n Qualidade",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Cliente\n e\n Mercado",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.amber,
                  ),
                  child: Text(
                    "Inovacao",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.nature_people,
                    color: Colors.green,
                  ),
                  child: Text(
                    "Sociedade e Meio Ambiente",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 300,
              child: TabBarView(controller: _controller, children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: "A dimensão de "),
                              TextSpan(
                                  text: "Talento Humano ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text:
                                      'aborda os aspectos relacionados às responsabilidades '
                                      'de cada indivíduo no empreendimento, à sua contribuição para '
                                      'produção dos bens e serviços e o desenvolvimento do negócio. '),
                            ]))),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: "A dimensão de "),
                              TextSpan(
                                  text: "Gestão e Qualidade ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: 'aborda aspectos relacionados à ges-'
                                      'tão da produção de bens e serviços e do próprio empreendimento. Esta dimen'
                                      'são também estabelece que lições devem ser aprendidas e que os processos de '
                                      'gestão e produção devem ser melhorados continuamente, mesmo que estes não '
                                      'estejam formalmente descritos.'),
                            ]))),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: "A dimensão de "),
                              TextSpan(
                                  text: "Cliente e Mercado ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: 'aborda temas como a estruturação do '
                                      'empreendimento para poder atender de forma satisfatória seus clientes, a análise '
                                      'constante do mercado e o impacto dos bens e serviços gerados nele.'),
                            ]))),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: "A dimensão de "),
                              TextSpan(
                                  text: "Inovação ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text:
                                      'aborda temas relacionados a olhar o negócio '
                                      '(atual ou novo) sob uma nova perspectiva, potencializando as oportunidades ob'
                                      'servadas no mercado. As oportunidades podem ser potencializadas através da re'
                                      'solução de um problema existente no mercado, uso de novas tecnologias, mudan'
                                      'ças nos processos, mudança nos serviços e/ou produtos, criação de novos servi'
                                      'ços e/ou produtos, entre outras.'),
                            ]))),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: <TextSpan>[
                              TextSpan(text: "A dimensão de "),
                              TextSpan(
                                  text: "Sociedade e Meio Ambiente ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: 'trata dos aspectos da inser-'
                                      'ção do empreendimento na sociedade à qual pertence. Esta dimensão se preocu'
                                      'pa também com os aspectos relacionados à responsabilidade social e ambiental. '
                                      'Os colaboradores do empreendimento devem se sentir inseridos na sociedade '
                                      'participando dela e colaborando para um mundo melhor.'),
                            ]))),
              ]),
            ),
            NavigationButton()
          ],
        ));
  }
}
