import 'dart:core';

import 'package:english_quiz/widgets/javob.dart';
import 'package:english_quiz/widgets/savol.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> SavollarVaJavoblar = [
    {
      "savol": "1. What ____ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "me", "togrimi": false},
        {"matn": "tom", "togrimi": false},
      ]
    },

    //savollar va javoblar bir xil copy paste dangasalik uzurasizlar 🙃 ;)

    {
      "savol": "2. What ____ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "me", "togrimi": true},
        {"matn": "tom", "togrimi": false},
      ]
    },
    {
      "savol": "3. What ____ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": true},
        {"matn": "is", "togrimi": false},
        {"matn": "me", "togrimi": false},
        {"matn": "tom", "togrimi": false},
      ]
    },
    {
      "savol": "4. What ____ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "me", "togrimi": false},
        {"matn": "tom", "togrimi": true},
      ]
    },
  ];

  String question = "1.Savol";
  int hozirgiSavolRaqami = 0;
  int natija = 0;

  void AnswerQuestion(bool togrimi) {
    setState(() {
      hozirgiSavolRaqami++;
      if (togrimi) {
        natija++;
      }
    });
  }

  void Restart() {
    setState(() {
      hozirgiSavolRaqami = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("English Quiz")),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: hozirgiSavolRaqami < SavollarVaJavoblar.length
            ? Savol(
                javoblar: SavollarVaJavoblar[hozirgiSavolRaqami]["javoblar"],
                savol: SavollarVaJavoblar[hozirgiSavolRaqami]["savol"],
                SavolgaJavobBerish: AnswerQuestion)
            : Javob(natija, SavollarVaJavoblar.length, Restart),
      ),
    );
  }
}
