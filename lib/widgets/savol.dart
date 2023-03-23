import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
  const Savol({Key? key, required this.javoblar, required this.savol, required this.SavolgaJavobBerish}) : super(key: key);
  final List <Map<String,dynamic>> javoblar;
  final String savol;
  final Function SavolgaJavobBerish;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          savol,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () {
              SavolgaJavobBerish(javoblar[0]["togrimi"]);
            },
            child: Text(
              javoblar[0]
              ["matn"],
              style: TextStyle(fontSize: 22),
            )),
        ElevatedButton(
            onPressed: () {
              SavolgaJavobBerish(javoblar[1]["togrimi"]);
            },
            child: Text(
              javoblar[1]
              ["matn"],
              style: TextStyle(fontSize: 22),
            )),
        ElevatedButton(
            onPressed: () {
              SavolgaJavobBerish(javoblar[2]["togrimi"]);
            },
            child: Text(
              javoblar[2]
              ["matn"],
              style: TextStyle(fontSize: 22),
            )),
        ElevatedButton(
            onPressed: () {
              SavolgaJavobBerish(javoblar[3]["togrimi"]);
            },
            child: Text(
              javoblar[3]
              ["matn"],
              style: TextStyle(fontSize: 22),
            )),
      ],
    );
  }
}
