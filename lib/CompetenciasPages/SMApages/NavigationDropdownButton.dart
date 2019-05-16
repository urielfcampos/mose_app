import 'package:flutter/material.dart';

import 'ObjetivosSMA.dart';
import 'SMAmainPage.dart';

class NavigationButton extends StatefulWidget {
  @override
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  String _dropDownValue = 'Selecione uma pagina';
  final pages = {
    "DESCRIÇÃO E FINALIDADE": mainPageSMA(),
    "Objetivos": SMAobjetivos()
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
                items: <String>['DESCRIÇÃO E FINALIDADE', 'Objetivos']
                    .map<DropdownMenuItem<String>>((String value) {
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
