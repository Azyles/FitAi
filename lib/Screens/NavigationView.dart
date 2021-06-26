import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'CollectionView.dart';
import 'Home.dart';
import 'ProfileView.dart';

class NavigationView extends StatefulWidget {
  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int selectedIndex = 0;

  PageController controller = PageController();

  List<StatefulWidget> screens = [
    CollectionView(),
    HomeView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        body: Stack(
          children: [
            PageView.builder(
              onPageChanged: (page) {},
              controller: controller,
              itemBuilder: (context, position) {
                return screens[position];
              },
              itemCount: 3, // Can be null
            ),
            Column(
              children: [
                Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: new Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: new BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                        child: Container(
                          decoration: new BoxDecoration(
                              color: Color.fromRGBO(15, 15, 15, 0.9)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: new GNav(
                              curve: Curves.easeInSine,
                              duration: Duration(milliseconds: 300),
                              tabs: [
                                GButton(
                                  gap: 10,
                                  iconActiveColor: Colors.grey[400],
                                  iconColor: Colors.grey[800],
                                  textColor: Colors.grey[400],
                                  iconSize: 30,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 6),
                                  icon: Icons.data_usage,
                                ),
                                GButton(
                                  gap: 10,
                                  iconActiveColor: Colors.grey[400],
                                  iconColor: Colors.grey[800],
                                  textColor: Colors.grey[400],
                                  iconSize: 30,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 6),
                                  icon: Icons.home_outlined,
// textStyle: t.textStyle,
                                ),
                                GButton(
                                  gap: 10,
                                  iconActiveColor: Colors.grey[400],
                                  iconColor: Colors.grey[800],
                                  textColor: Colors.grey[400],
                                  iconSize: 30,
                                  icon: Icons.list,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 6),

// textStyle: t.textStyle,
                                ),
                              ],
                              selectedIndex: selectedIndex,
                              onTabChange: (index) {
                                // _debouncer.run(() {

                                print(index);
                                setState(() {
                                  selectedIndex = index;
                                  // badge = badge + 1;
                                });
                                controller.jumpToPage(index);
                                // });
                              }),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
