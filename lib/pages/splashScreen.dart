import 'dart:async';
import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7), () => Navigator.pop(context, "/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GradientBack(height: null),
          /*Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: FlareActor(
                    "images/CACIED2019.flr",
                    animation: "Untitled",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}