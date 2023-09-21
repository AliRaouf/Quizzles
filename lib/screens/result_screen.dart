import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quizzles/components/values.dart';
import 'package:quizzles/screens/levels_screen.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenheight = MediaQuery
        .of(context)
        .size
        .height;
    final values = Provider.of<SumFunc>(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff1f1147),
          shadowColor: Colors.transparent,
          title: Text(
            "Results",
            style: GoogleFonts.raleway(
                color: Color(0xff37eebd),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
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
                  Text("Total Correct Answers",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: screenheight * 0.02),
                    child: Text("${values.count} out of 10",
                        style: GoogleFonts.raleway(
                          color: Color(0xff37eebd),
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    height: screenheight * 0.4,
                    width: screenwidth,
                    margin: EdgeInsets.only(
                        left: screenwidth * 0.05, right: screenwidth * 0.05,
                        top: screenheight * 0.05, bottom: screenheight * 0.25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [Color(0xff69694fd), Color(0xff32167C)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Your Final Score is",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                bottom: screenheight * 0.03),
                            padding: EdgeInsets.all(45),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: Color(0xfffbb82a),
                            ),
                            child: Text(
                              "${values.sum}",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 100,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LevelsScreen()),
                          );
                          values.sum=0;
                          values.count=0;
                          print("sum=${values.sum} & count=${values.count}");
                        },
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: screenwidth*0.15,
                                    vertical: screenheight * 0.02)),
                            backgroundColor:
                            MaterialStatePropertyAll(Color(0xff6949Fe))),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.loop_rounded,size: 30),
                            Text("  Try Again",
                                style: GoogleFonts.raleway(
                                    fontSize: 30, color: Colors.white)),
                          ],
                        )
                    ),
                  ),
                ])));
  }
}
