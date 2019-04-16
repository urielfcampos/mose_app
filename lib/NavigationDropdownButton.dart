import 'package:flutter/material.dart';

import './AboutPages/About5.dart';
import './AboutPages/About6.dart';
import './AboutPages/About7.dart';
import './AboutPages/about.dart';
import './AboutPages/about2.dart';
import './AboutPages/about3.dart';
import './AboutPages/about4.dart';
import './AboutPages/about8.dart';

class NavigationButton extends StatefulWidget {
  @override
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  String _dropDownValue = 'Selecione uma pagina';
  final pages = {
    "Sonho e Sobrevivencia": About2(),
    "Princípios para o Sucesso de um Empreendimento": About3(),
    "Introdução": About(),
    "Quais são as dimensões (pilares) do MOSE?": About4(),
    "Arquitetura do MOSE": About5(),
    'Perfis das Unidades de Negócio': About6(),
    "Níveis de Excelência": About7(),
    "Elementos da Base de Competência": About8(),
  };
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: DropdownButton<String>(
                isExpanded: true,
                value: null,
                hint: Text(
                  _dropDownValue,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (String newValue) {
                  setState(() {
                    print(_dropDownValue);
                    _dropDownValue = newValue;
                  });
                },
                items: <String>[
                  'Introdução',
                  'Sonho e Sobrevivencia',
                  'Princípios para o Sucesso de um Empreendimento',
                  'Quais são as dimensões (pilares) do MOSE?',
                  'Arquitetura do MOSE',
                  'Perfis das Unidades de Negócio',
                  "Níveis de Excelência",
                  "Elementos da Base de Competência"
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
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: getNextPage,
            )
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getNextPage() {
    if (pages.containsKey(_dropDownValue)) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => pages[_dropDownValue]));
    }
  }
}
