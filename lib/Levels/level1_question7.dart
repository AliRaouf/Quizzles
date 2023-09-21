import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzles/Levels/level1_question8.dart';
import 'package:quizzles/components/popup_icon.dart';
import 'package:quizzles/components/Question.dart';
import 'package:quizzles/screens/levels_screen.dart';

class Level1Question7 extends StatelessWidget {
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
            Text("07/10",
                style: GoogleFonts.raleway(
                  color: Color(0xff37eebd),
                  fontSize: 15,
                )),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "What is the largest country in the World?",
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 25),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image(
                  height: screenheight * 0.3,
                  width: screenwidth,
                  image: NetworkImage(
                      "https://geology.com/world/world-map.gif")),
            ),
            Question(answerNumber: "01", answer: "Australia"),
            Question(answer: "America", answerNumber: "02"),
            Question(answerNumber: "03", answer: "China"),
            RightQuestions(answer: "Russia", answerNumber: "04"),
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
                          MaterialPageRoute(builder: (context) => Level1Question8()),
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
