import 'package:flutter/material.dart';
import 'package:my_fav_flutter_animations/my_fav_animations/myanimations.dart';

class BasicSimpleFadeAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Fade Animation Examples",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    child: Image.asset("assets/demo_3.png")),
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
    );
  }
}

class BasicSimpleTransformAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Transform Animation Examples",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                SimpleTransformAnimation(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "This is a text ,\nwith default TransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                SimpleTransformAnimation(
                  xBegin: -750,
                  xEnd: 0,
                  xDuration: Duration(seconds: 2),
                  delayInMilliSeconds: 800,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "This is a text ,\nwith Customized TransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                SimpleTransformAnimation(
                  yBegin: 50,
                  yEnd: 0,
                  yDuration: Duration(seconds: 2),
                  delayInMilliSeconds: 1800,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Another text ,\nwith Customized TransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                SimpleTransformAnimation(
                  xBegin: 750,
                  xEnd: 0,
                  xDuration: Duration(seconds: 2),
                  delayInMilliSeconds: 2800,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "YET Another text ,\nwith Customized TransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SimpleTransformAnimation(
                  delayInMilliSeconds: 5000,
                  xDuration: Duration(seconds: 1),
                  xBegin: -800,
                  xEnd: 0,
                  yBegin: -1000,
                  yDuration: Duration(seconds: 1),
                  curveX: Curves.fastLinearToSlowEaseIn,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_3.png"),
                  ),
                ),
                SimpleTransformAnimation(
                  delayInMilliSeconds: 5000,
                  xDuration: Duration(seconds: 1),
                  xBegin: 800,
                  xEnd: 0,
                  yDuration: Duration(seconds: 1),
                  curveX: Curves.fastLinearToSlowEaseIn,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_3.png"),
                  ),
                ),
                SimpleTransformAnimation(
                  delayInMilliSeconds: 6400,
                  xDuration: Duration(seconds: 1),
                  xBegin: 800,
                  xEnd: 0,
                  yDuration: Duration(seconds: 2),
                  yBegin: 1600,
                  yEnd: 0,
                  curveY: Curves.bounceOut,
                  curveX: Curves.fastLinearToSlowEaseIn,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/demo_2.png"),
                  ),
                ),
                SimpleTransformAnimation(
                  delayInMilliSeconds: 7800,
                  xDuration: Duration(seconds: 1),
                  xBegin: 1000,
                  xEnd: 0,
                  yDuration: Duration(seconds: 1),
                  yBegin: -1000,
                  yEnd: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/demo_1.png"),
                  ),
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
      appBar: AppBar(
        title: Text("ProFadeAndTransformAnimation Examples"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ProFadeAndTransformAnimation(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "This is a text ,\nwith default ProFadeAndTransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 1000,
                  xBegin: -800,
                  xDuration: Duration(seconds: 2),
                  curveX: Curves.bounceIn,
                  curveOpacity: Curves.easeInOutCubic,
                  opacityDuration: Duration(seconds: 4),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "This is a text ,\nwith Customized ProFadeAndTransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 3000,
                  xBegin: 1000,
                  yBegin: -500,
                  yDuration: Duration(seconds: 2),
                  xDuration: Duration(seconds: 2),
                  opacityDuration: Duration(seconds: 3),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Another Text ,\nwith Customized ProFadeAndTransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 5400,
                  xBegin: 1000,
                  curveX: Curves.bounceIn,
                  xDuration: Duration(seconds: 2),
                  curveY: Curves.bounceOut,
                  yBegin: 400,
                  yDuration: Duration(seconds: 2),
                  opacityBegin: 0,
                  opacityEnd: 1,
                  opacityDuration: Duration(milliseconds: 2800),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "yet Another text ,\nwith Customized ProFadeAndTransformAnimation Settings",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 6400,
                  opacityDuration: Duration(milliseconds: 1600),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_1.png"),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 7200,
                  xBegin: -1000,
                  xDuration: Duration(seconds: 2),
                  opacityDuration: Duration(seconds: 2),
                  curveX: Curves.bounceInOut,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_2.png"),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 8000,
                  xBegin: 1000,
                  yBegin: -400,
                  xDuration: Duration(milliseconds: 2500),
                  yDuration: Duration(milliseconds: 2500),
                  opacityDuration: Duration(milliseconds: 3500),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_3.png"),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 9000,
                  yBegin: -500,
                  opacityDuration: Duration(milliseconds: 1800),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_1.png"),
                  ),
                ),
                ProFadeAndTransformAnimation(
                  delayInMilliSeconds: 10000,
                  yBegin: 500,
                  opacityBegin: 1,
                  opacityEnd: 0.3,
                  opacityDuration: Duration(milliseconds: 1800),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/demo_4.png"),
                  ),
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
