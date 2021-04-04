import 'package:flutter/material.dart';

import 'file:///D:/Fluttere/TO%20GIHUB/my_fav_flutter_animations/lib/example/basics/basic_widget_examples.dart';

import 'example/complete view/complete_view_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BasicSimpleFadeAnimationPage();
                    }));
                  },
                  child: Text("Basic Simple Fade Animation Page")),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BasicSimpleTransformAnimationPage();
                    }));
                  },
                  child: Text("Basic Simple Transform Animation Page")),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProFadeAndTransformAnimationPage();
                    }));
                  },
                  child: Text("Pro Fade And Transform Animation Page")),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CompleteViewPage();
                    }));
                  },
                  child: Text("Complete View with Animations page")),
            ],
          ),
        ),
      ),
    );
  }
}
