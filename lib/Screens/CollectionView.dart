import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ClassView.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class CollectionView extends StatefulWidget {
  @override
  _CollectionViewState createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  CollectionReference classes = FirebaseFirestore.instance
      .collection('UserData')
      .doc("${auth.currentUser!.uid}")
      .collection("Classes");
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
              "Collection",
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
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: classes.snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Material(
                      color: Colors.black,
                      child: Center(
                          child: Text(
                        "Something went wrong",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 40,
                            fontWeight: FontWeight.w300),
                      )));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Material(
                      color: Colors.black,
                      child: Center(
                          child: Text(
                        "Disce",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 40,
                            fontWeight: FontWeight.w300),
                      )));
                }
                if (snapshot.data!.size == 0) {
                  return GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.07),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.grey[400],
                          )),
                        ),
                      ),
                    ],
                  );
                } else {
                  return new GridView(
                    padding: EdgeInsets.all(20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 3),
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ClassView(
                                (document.data() as dynamic)['name'],
                              );
                            }),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[900],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/featured/?${(document.data() as dynamic)['image']}"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.matrix(<double>[
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                  ]))
                              //border: Border.all(width: 4, color: Colors.grey[900])
                              ),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                                child: new Text(
                              (document.data() as dynamic)["name"],
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
