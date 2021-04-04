import 'package:flutter/material.dart';
import 'package:my_fav_flutter_animations/my_fav_animations/myanimations.dart';

class BasicSimpleFadeAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// basic fade anim examples
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Basic Fade Animation Examples",
                      textScaleFactor: 1.4,
                    )),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleFadeAnimation(
                      child: Text(
                    "This is a text ,\nwith default FadeAnimation Settings",
                    textScaleFactor: 1.5,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleFadeAnimation(
                    curve: Curves.easeInCirc,
                    duration: Duration(seconds: 3),
                    child: Text(
                      "This is a text ,\nwith Customized FadeAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleFadeAnimation(
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(milliseconds: 2500),
                    child: Text(
                      "Another text ,\nwith Customized FadeAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleFadeAnimation(
                      child: Image.asset("assets/demo_1.png")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleFadeAnimation(
                      curve: Curves.easeInCirc,
                      duration: Duration(seconds: 1),
                      child: Image.asset("assets/demo_2.jpg")),
                ),
                SizedBox(height: 20),

                Divider(
                  thickness: 5,
                  height: 10,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BasicSimpleTransformAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// basic fade anim examples
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "   Basic Transform Animation Examples",
                      textScaleFactor: 1.4,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900),
                    )),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a text ,\nwith default FadeAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a text ,\nwith Customized TransformAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Another text ,\nwith Customized TransformAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/demo_3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/demo_4.jpg"),
                ),
                SizedBox(height: 20),

                Divider(
                  thickness: 5,
                  height: 10,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProFadeAndTransformAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// basic fade anim examples
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Basic Transform Animation Examples")),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a text ,\nwith default FadeAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a text ,\nwith Customized TransformAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Another text ,\nwith Customized TransformAnimation Settings",
                    textScaleFactor: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/demo_3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/demo_4.jpg"),
                ),
                SizedBox(height: 20),

                Divider(
                  thickness: 5,
                  height: 10,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
