import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quizzles/components/values.dart';

class RightQuestions extends StatefulWidget {
  String? answerNumber;
  String? answer;

  RightQuestions({this.answerNumber, this.answer});

  @override
  State<RightQuestions> createState() => _RightQuestionsState();
}
class _RightQuestionsState extends State<RightQuestions> {
  bool isPressed =false;
  @override
  Widget build(BuildContext context) {
    final values = Provider.of<SumFunc>(context);
    double screenheight = MediaQuery.of(context).size.height;
    return ElevatedButton(
        onPressed: () {
          setState(() {
            isPressed=true;
           values.ValueIncrease();
          });
        },
        style: ButtonStyle(
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (isPressed) {
                  return Color(0xff33e5ba);
                }
                return Color(0xff1f1147);
              },
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5, right: 20),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                        colors: [Color(0xff8f71fe), Color(0xff6a49fe)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,)),
                child: Text(
                  "${widget.answerNumber}",
                  style: TextStyle(fontSize: 15),
                )),
            Text(
              "${widget.answer}",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}

class Question extends StatefulWidget {
  String? answerNumber;
  String? answer;

  Question({this.answerNumber, this.answer});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return ElevatedButton(
        onPressed: () {
          setState(() {
            isPressed=true;
          });
        },
        style: ButtonStyle(
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (isPressed) {
                  return Colors.red;
                }
                return Color(0xff1f1147);
              },
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5, right: 20),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                        colors: [Color(0xff8f71fe), Color(0xff6a49fe)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Text(
                  "${widget.answerNumber}",
                  style: TextStyle(fontSize: 15),
                )),
            Text(
              "${widget.answer}",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
