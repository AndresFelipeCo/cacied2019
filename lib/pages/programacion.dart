import 'package:flutter/material.dart';

class Programacion extends StatefulWidget{
  final String title;
  Programacion({Key key, @required this.title});
  @override
  _ProgramacionState createState() => _ProgramacionState();
}

class _ProgramacionState extends State<Programacion>{
  var listProg = [
    {
      "date": "Miercoles 1 de Noviembre",
      "events": [
        {"name" :"Registro", "hour":"07:30-09:00", "name":"Hall Universidad Mariana", "lat":"1.223875", "long":"-77.283344" },
        {"name" :"Registro", "hour":"07:30-09:00", "name":"Hall Universidad Mariana", "lat":"1.223875", "long":"-77.283344" },
      ]
    },
    {
      "date": "Miercoles 1 de Noviembre",
      "events":[
        {"name" :"Registro", "hour":"07:30-09:00", "name":"Hall Universidad Mariana", "lat":"1.223875", "long":"-77.283344" },
        {"name" :"Registro", "hour":"07:30-09:00", "name":"Hall Universidad Mariana", "lat":"1.223875", "long":"-77.283344" },
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "images/afiche.png",
                    fit: BoxFit.cover,
                  )
              ),
            ),

          ];
        },
        body: Center(
          child: ListView.builder(
            itemCount: listProg.length,
              itemBuilder: (context, index){
              var events = listProg[index]['events'];
                return Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                      child: Text(listProg[index]['date'],
                        style: new TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}

