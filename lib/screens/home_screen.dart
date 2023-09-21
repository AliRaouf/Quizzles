import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzles/screens/levels_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.gyazo.com/a1a71b4a695a23ccd7af88114a658503.png"),
              fit: BoxFit.fill),
        ),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(
                top: screenheight * 0.32, bottom: screenheight * 0.08),
            child: Text(
              "Quizzles",
              style: GoogleFonts.raleway(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.new(0xff37eebd)),
            ),
          ),
          SizedBox(
            height: screenheight * 0.05,
            child: Text("Let's Play!",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Text(
            "Play now and Level up",
            style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(
                top: screenheight * 0.15, bottom: screenheight * 0.04),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelsScreen()),
                  );
                },
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        horizontal: screenwidth * 0.24,
                        vertical: screenheight * 0.02)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff6949Fe))),
                child: Text("Play Now",
                    style: GoogleFonts.raleway(
                        fontSize: 30, color: Colors.white))),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                      horizontal: screenwidth * 0.3,
                      vertical: screenheight * 0.02)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff1f1147)),
                  side: MaterialStatePropertyAll(
                      BorderSide(color: (Color(0xff6949Fe))))),
              child: Text("About",
                  style: GoogleFonts.raleway(
                      fontSize: 30, color: Color(0xff6443f4))))
        ]),
      ),
    );
  }
}
