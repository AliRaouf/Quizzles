import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzles/Levels/level1_question2.dart';
import 'package:quizzles/components/popup_icon.dart';
import 'package:quizzles/components/Question.dart';
import 'package:quizzles/screens/levels_screen.dart';

class Level1Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff1f1147),
          shadowColor: Colors.transparent,
          title: Text(
            "Level 1",
            style: GoogleFonts.lato(
                color: Color(0xff37eebd),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          actions: [PopupIcon()]),
      backgroundColor: Color(0xff1f1147),
      body: Container(
        margin: EdgeInsets.only(
            top: screenheight * 0.04,
            left: screenwidth * 0.05,
            right: screenwidth * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("01/10",
                style: GoogleFonts.raleway(
                  color: Color(0xff37eebd),
                  fontSize: 15,
                )),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Which of the following is the largest ocean on Earth?",
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 25),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image(
                  height: screenheight * 0.3,
                  width: screenwidth,
                  image: NetworkImage(
                      "https://www.cia.gov/the-world-factbook/static/72d4f9ced6bef3763f96bd8cd6f5d898/4fe8c/Pacific_Ocean_Unimak_volcanoes.jpg")),
            ),
            Question(answer: "Atlantic Ocean", answerNumber: "01"),
            Question(answerNumber: "02", answer: "Indian Ocean"),
            RightQuestions(answer: "Pacific Ocean", answerNumber: "03"),
            Question(answerNumber: "04", answer: "Arctic Ocean"),
            Container(margin: EdgeInsets.only(top: screenheight*0.04),
              child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LevelsScreen()),
                      );
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            horizontal: screenwidth * 0.1,
                            vertical: screenheight * 0.015)),
                        backgroundColor:
                        MaterialStatePropertyAll(Color(0xff6949Fe))),
                    child: Text("Back",
                        style: GoogleFonts.raleway(
                            fontSize: 20, color: Colors.white))
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Level1Question2()),
                      );
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            horizontal: screenwidth * 0.1,
                            vertical: screenheight * 0.015)),
                        backgroundColor:
                        MaterialStatePropertyAll(Color(0xff6949Fe))),
                    child: Text("Next",
                        style: GoogleFonts.raleway(
                            fontSize: 20, color: Colors.white)))
            ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
