import 'package:color_detector/Pages/BottomNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:color_detector/util/listTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: 0, // Set current index according to the selected page
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/settings');
          }
        },
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 85, bottom: 20),
            child: Text(
              "Choose your alarm",
              style: TextStyle(
                  fontSize: 25, color: Theme.of(context).colorScheme.tertiary),
            ),
          ),
          Image.asset("assets/2colors.png"),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadow,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                      spreadRadius: 0,
                    )
                  ],
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8, right: 12, left: 12, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Choose your alarm",
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/redhome');
                      },
                      child: const listTile(
                        Imgpath: 'assets/red_dot.png',
                        Title: 'Red light alarm',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/greenhome');
                      },
                      child: const listTile(
                        Imgpath: 'assets/green_dot.png',
                        Title: 'Green light alarm',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
