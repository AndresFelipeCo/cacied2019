import 'package:cacied/componets/drawDrawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cacied/componets/items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget image_carousel = Container(
        height: 190.0,
        child:  new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/logo2019.jpg'),
            AssetImage('images/udenar.jpg'),
            AssetImage('images/unimar.jpg'),
            AssetImage('images/cesmag.jpg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000000),
          autoplayDuration: Duration(seconds: 5),
          dotBgColor: Colors.transparent,
          overlayShadow: true,
          overlayShadowColors: Colors.white,
          overlayShadowSize: 0.2,
          dotSize: 8.0,
          indicatorBgPadding: 15.0,
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('CACIED 2019'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: DrawDrawer(
          title: 'home',
        )
      ),

    body: Column(
      children: <Widget>[
        image_carousel,
        Flexible(child: Items())
      ],
    )
    );
  }
}