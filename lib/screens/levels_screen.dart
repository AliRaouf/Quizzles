import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:quizzles/Levels/level1_question1.dart';
import 'package:quizzles/screens/home_screen.dart';

class LevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
          automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1f1147),
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999),
            color: Color(0xff32167C),
          ),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.arrow_back_outlined)),
        ),
        title: Text(
          "Levels",
          style: GoogleFonts.raleway(
              color: Color(0xff37eebd),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: <Widget>[
              Container(margin: EdgeInsets.only(top: screenheight*0.035),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff7656fc)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Level1Question1()));
                        },
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("01",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff4fb3fe)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("02",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(vertical: screenheight*0.035),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xfffc5e27)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("03",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff5edcc8)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("04",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xfff72e9f)),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                          shape: MaterialStatePropertyAll(
                              PolygonBorder(sides: 5, borderRadius: 20))),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text("Level",
                              style: GoogleFonts.raleway(
                                fontSize: 30,
                              )),
                          Text("05",
                              style: GoogleFonts.lato(
                                fontSize: 35,
                              ))
                        ],
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff3c2882)),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                          shape: MaterialStatePropertyAll(
                              PolygonBorder(sides: 5, borderRadius: 20))),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text("Level",
                              style: GoogleFonts.raleway(
                                fontSize: 30,
                              )),
                          Text("06",
                              style: GoogleFonts.lato(
                                fontSize: 35,
                              ))
                        ],
                      ))
                ],
              ),
              Container(margin: EdgeInsets.symmetric(vertical: screenheight*0.035),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff1b3d83)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("07",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff663f53)),
                            padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                            shape: MaterialStatePropertyAll(
                                PolygonBorder(sides: 5, borderRadius: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Level",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                )),
                            Text("08",
                                style: GoogleFonts.lato(
                                  fontSize: 35,
                                ))
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
