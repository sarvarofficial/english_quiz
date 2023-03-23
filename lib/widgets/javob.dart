import 'package:flutter/material.dart';

class Javob extends StatelessWidget {
  const Javob(this.natija, this.savollarUzunligi, this.Qaytaboshla, {Key? key}) : super(key: key);
 final int natija;
 final int savollarUzunligi;
 final Function() Qaytaboshla;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Natija: $natija/${savollarUzunligi} ",
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton.icon(onPressed:Qaytaboshla,icon: Icon(Icons.restart_alt),label: Text("RESTART"),)
      ],
    );
  }
}
