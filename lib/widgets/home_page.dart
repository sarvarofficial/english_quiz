import 'package:english_quiz/screens/main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/quiz.jpg"),fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              SizedBox(),
              SizedBox(),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage()));
              }, child: Text("START"),style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5E35B1),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)) ,),
            ],
          ),
        ),
      ),
    );
  }
}
