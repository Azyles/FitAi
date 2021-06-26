import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Row(
              children: [
                Text(
                  ". .",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://static.seattletimes.com/wp-content/uploads/2019/07/imagesusersiqjWHBFdfxIUit2Sh4Ve289Mv1piFq5T3pJF0qzS8rF9LjsWaQ-1x-1-1560x1170.jpg'),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Text(
              "Explore",
              style: GoogleFonts.jost(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 10),
            child: Text(
              "Browse Through Courses",
              style: GoogleFonts.jost(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
