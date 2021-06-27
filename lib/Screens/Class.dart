import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Classs extends StatefulWidget {
  const Classs({Key? key}) : super(key: key);

  @override
  _ClasssState createState() => _ClasssState();
}

class _ClasssState extends State<Classs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey[600],
                    )),
                Spacer(),
                Text(
                  ". .",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/6024852/screenshots/15593756/media/365eb82411fe7529743dafd0ba2de79d.jpg?compress=1&resize=1200x900'),
                      fit: BoxFit.cover)),
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.35,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: Text(
                  "Easy",
                  style: GoogleFonts.jost(
                      color: Colors.green[700],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Text(
              "Basics of Meditation",
              style: GoogleFonts.jost(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Meditation is a simple practice available to all, which can reduce stress, increase calmness and clarity and promote happiness. Learning how to meditate is straightforward, and the benefits can come quickly. ",
                style: GoogleFonts.jost(
                    color: Colors.grey[800],
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(),
          Center(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Start",
                    style: GoogleFonts.jost(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
