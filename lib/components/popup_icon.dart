import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzles/Levels/level1_question1.dart';
import 'package:quizzles/Levels/level1_question10.dart';
import 'package:quizzles/Levels/level1_question2.dart';
import 'package:quizzles/Levels/level1_question3.dart';
import 'package:quizzles/Levels/level1_question4.dart';
import 'package:quizzles/Levels/level1_question5.dart';
import 'package:quizzles/Levels/level1_question6.dart';
import 'package:quizzles/Levels/level1_question7.dart';
import 'package:quizzles/Levels/level1_question8.dart';
import 'package:quizzles/Levels/level1_question9.dart';
class PopupIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        PopupMenuButton<String>(icon: Icon(Icons.menu_sharp),
          onSelected: (value) {
            if (value == "1") {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question1()));
            }
            else if(value =="2"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question2()));
            }
            else if(value =="3"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question3()));
            }
            else if(value =="4"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question4()));
            }
            else if(value =="5"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question5()));
            }
            else if(value =="6"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question6()));
            }
            else if(value =="7"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question7()));
            }
            else if(value =="8"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question8()));
            }
            else if(value =="9"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question9()));
            }
            else if(value =="10"){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question10()));
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                  value: "1",
                  child: Text(
                    "Question 1",
                  )),
              PopupMenuItem(
                  value: "2",
                  child: Text(
                    "Question 2",
                  )),
              PopupMenuItem(
                  value: "3",
                  child: Text(
                    "Question 3",
                  )),
              PopupMenuItem(
                  value: "4",
                  child: Text(
                    "Question 4",
                  )),
              PopupMenuItem(
                  value: "5",
                  child: Text(
                    "Question 5",
                  )),
              PopupMenuItem(
                  value: "6",
                  child: Text(
                    "Question 6",
                  )),
              PopupMenuItem(
                  value: "7",
                  child: Text(
                    "Question 7",
                  )),
              PopupMenuItem(
                  value: "8",
                  child: Text(
                    "Question 8",
                  )),
              PopupMenuItem(
                  value: "9",
                  child: Text(
                    "Question 9",
                  )),
              PopupMenuItem(
                  value: "10",
                  child: Text(
                    "Question 10",
                  )),
            ];
          },
        );
  }
}
