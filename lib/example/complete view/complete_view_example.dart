import 'package:flutter/material.dart';
import 'package:my_fav_flutter_animations/my_fav_animations/myanimations.dart';

class CompleteViewPage extends StatefulWidget {
  @override
  _CompleteViewPageState createState() => _CompleteViewPageState();
}

class _CompleteViewPageState extends State<CompleteViewPage> {
  Color lightColor = Colors.black;
  double intensity = 95;
  changeLight() {}
  List<Color> colorsList = [
    Colors.brown,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.brown,
    Colors.amber,
    Colors.cyan,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: lightColor.withOpacity(intensity / 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            ProFadeAndTransformAnimation(
                              xBegin: 0,
                              yBegin: 0,
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.arrow_back_outlined),
                                      color: intensity >= 50
                                          ? Colors.white
                                          : Colors.yellow,
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }),
                                  Text(
                                    "Bed Room",
                                    textScaleFactor: 3.0,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: intensity >= 50
                                            ? Colors.white
                                            : Colors.yellow),
                                  ),
                                ],
                              ),
                            ),
                            ProFadeAndTransformAnimation(
                              xBegin: 0,
                              yBegin: -50,
                              yEnd: 10,
                              delayInMilliSeconds: 500,
                              child: Text(
                                "         4 Lights",
                                textScaleFactor: 1.6,
                                style: TextStyle(
                                    color: intensity >= 50
                                        ? Colors.white
                                        : Colors.yellow),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  ProFadeAndTransformAnimation(
                    yBegin: 0,
                    xBegin: 400,
                    delayInMilliSeconds: 1000,
                    child: Container(
                      height: 45,
                      width: 450,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 45),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 162,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.lightbulb_outline,
                                  size: 32,
                                  color: Colors.deepPurpleAccent,
                                ),
                                Text(
                                  "Main Light",
                                  textScaleFactor: 1.2,
                                  style:
                                      TextStyle(color: Colors.deepPurpleAccent),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 168,
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.desktop_windows_outlined,
                                  size: 32,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Desk Light",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 162,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.single_bed_outlined,
                                  size: 32,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Bed Light",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 162,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.wb_twighlight,
                                  size: 32,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Lamp Light",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ProFadeAndTransformAnimation(
              xBegin: 0,
              yBegin: 100,
              child: Container(
                height: 900,
                decoration: BoxDecoration(
                  color: lightColor.withOpacity(intensity / 100),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      /// Intensity
                      SimpleFadeAnimation(
                        duration: Duration(seconds: 3),
                        curve: Curves.bounceIn,
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "    Intensity",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Slider(
                                  value: intensity / 100,
                                  activeColor: Colors.deepPurpleAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (val) {
                                    setState(() {
                                      intensity = val * 100;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                      SimpleFadeAnimation(
                        duration: Duration(seconds: 3),
                        curve: Curves.linear,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 40,
                          indent: 30,
                          endIndent: 30,
                        ),
                      ),

                      /// Colors
                      SimpleFadeAnimation(
                        duration: Duration(seconds: 3),
                        curve: Curves.bounceIn,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Colors",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Container(
                                width: 400,
                                height: 60,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        InkWell(
                                          child: SimpleTransformAnimation(
                                            delayInMilliSeconds: 2200,
                                            yBegin: 0,
                                            xBegin: -index * 32.toDouble(),
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                    colorsList.elementAt(index),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              lightColor =
                                                  colorsList.elementAt(index);
                                            });
                                          },
                                        ),
                                        index == colorsList.length - 1
                                            ? Icon(Icons.add)
                                            : Container(),
                                      ],
                                    );
                                  },
                                  itemCount: colorsList.length,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SimpleFadeAnimation (
                        duration: Duration(seconds: 3),
                        curve: Curves.linear,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 40,
                          indent: 30,
                          endIndent: 30,
                        ),
                      ),

                      /// Scenes
                      SimpleFadeAnimation(
                        duration: Duration(seconds: 3),
                        curve: Curves.bounceIn,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Scenes",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ProFadeAndTransformAnimation(
                                            delayInMilliSeconds: 2800,
                                            xBegin: 35,
                                            yBegin: 35,
                                            child: Container(
                                              height: 60,
                                              width: 160,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Colors
                                                          .pinkAccent.shade100,
                                                      Colors.orange.shade200
                                                    ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.cake_outlined,
                                                    size: 28,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Birthday",
                                                    textScaleFactor: 1.6,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          ProFadeAndTransformAnimation(
                                            delayInMilliSeconds: 2800,
                                            xBegin: -35,
                                            yBegin: 35,
                                            child: Container(
                                              height: 60,
                                              width: 160,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red.shade400,
                                                      Colors.blue.shade200
                                                    ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.party_mode_outlined,
                                                    size: 28,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Party",
                                                    textScaleFactor: 1.6,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ProFadeAndTransformAnimation(
                                            delayInMilliSeconds: 2800,
                                            xBegin: 35,
                                            yBegin: -35,
                                            child: Container(
                                              height: 60,
                                              width: 160,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Colors.blue.shade300,
                                                      Colors.purple.shade100
                                                    ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .person_outline_rounded,
                                                    size: 28,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Relax",
                                                    textScaleFactor: 1.6,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          ProFadeAndTransformAnimation(
                                            delayInMilliSeconds: 2800,
                                            xBegin: -35,
                                            yBegin: -35,
                                            child: Container(
                                              height: 60,
                                              width: 160,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Colors
                                                          .greenAccent.shade100,
                                                      Colors.pinkAccent.shade100
                                                    ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.face_unlock_rounded,
                                                    size: 28,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Fun",
                                                    textScaleFactor: 1.6,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

/// widgets
