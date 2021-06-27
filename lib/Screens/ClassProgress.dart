import 'package:flutter/material.dart';

class ClassProgressView extends StatefulWidget {
  const ClassProgressView({Key? key}) : super(key: key);

  @override
  _ClassProgressViewState createState() => _ClassProgressViewState();
}

class _ClassProgressViewState extends State<ClassProgressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                    fit: BoxFit.cover),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(1),
                        spreadRadius: 100,
                        blurRadius: 500,
                        offset: Offset(0, -10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.07),
                                    width: 3)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/3286391/screenshots/11307272/media/5de995c15a4bd0b7a81dd22f2a835c77.jpg?compress=1&resize=1200x900'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Basics of Meditation',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ],
            ),
          ],
        ));
  }
}
