import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  InputState createState() => InputState();
}

class InputState extends State<Input> {
  bool zichtbaar = true;
  double grootte = 100;
  Map<String, Color> lijstMap = {
    'rood': Colors.red,
    'groen': Colors.green,
    'blauw': Colors.blue
  };
  String keuzeKleur = 'rood';
  String tekst = "Toon is cool";

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> opties = <DropdownMenuItem<String>>[];
    lijstMap.keys.forEach((element) {
      opties.add(DropdownMenuItem(child: Text(element), value: element));
    });

    return Column(children: <Widget>[
      Switch(
        value: zichtbaar,
        onChanged: changed,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
        Container(
          width: 150,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              items: opties,
              value: keuzeKleur,
              onChanged: (value) {
                setState(() {
                  keuzeKleur = value!;
                });
              },
            ),
          ),
        )
      ]),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              hintText: 'Voer hier je tekst in'),
          onChanged: (tekstinvoer) {
            setState(() {
              tekst = tekstinvoer;
            });
          },
        ),
      ),
      Center(
          child: Visibility(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    tekst,
                    textScaleFactor: 2,
                    style: TextStyle(color: lijstMap[keuzeKleur]!),
                  )
                ],
              ),
              visible: zichtbaar))
    ]);
  }

  void changed(bool? value) {
    setState(() {
      zichtbaar = value!;
    });
  }
}
