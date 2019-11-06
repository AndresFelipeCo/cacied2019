import 'package:cacied/pages/programacionGeneral.dart';
import 'package:flutter/material.dart';

import 'lineasTematicas.dart';

class Programacion extends StatefulWidget{
  final String title;
  Programacion({Key key, @required this.title});
  @override
  _ProgramacionState createState() => _ProgramacionState();
}

class _ProgramacionState extends State<Programacion>{
  var listProgG = [
    {
      "date": "Miércoles 6 de Noviembre",
      "place": "Universidad Mariana",
      "photo": "images/unimar.jpg",
      "day": "6"
    },
    {
      "date": "Miércoles 6 de Noviembre",
      "place": "Universidad de Nariño",
      "photo": "images/udenar.jpg",
      "day": "06"
    },
    {
      "date": "Jueves 7 de Noviembre",
      "place": "Universidad Cesmag",
      "photo": "images/cesmag.jpg",
      "day": "7"
    },
    {
      "date": "Viernes 8 de Noviembre",
      "place": "Universidad de Nariño",
      "day": "8",
      "photo": "images/udenar.jpg"
    },
  ];
  var listProg = [
    {
      "date": "Miércoles 6 de Noviembre",
      "place": "Universidad Mariana",
      "photo": "images/unimar.jpg",
      "day": "6"
    },
    {
      "date": "Jueves 7 de Noviembre",
      "place": "Universidad Cesmag",
      "photo": "images/cesmag.jpg",
      "day": "7"
    },
    /*{
      "date": "Viernes 8 de Noviembre",
      "place": "Universidad de Nariño",
      "day": "8",
      "photo": "images/udenar.jpg"
    },*/
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
            itemCount: widget.title == 'Programación General' ? listProgG.length : listProg.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: FlatButton(
                    onPressed: (){
                      if (widget.title == 'Programación General'){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return ProgramacionGeneral(
                                title: listProgG[index]['date'],
                                day: listProgG[index]['day'],
                                imageBar: listProgG[index]['photo'],
                              );
                            })
                        );
                      }else{
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return LineasTematicas(
                                title: listProg[index]['date'],
                                day: listProg[index]['day'],
                                imageBar: listProg[index]['photo'],
                              );
                            })
                        );
                      }
                    },
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: new Container(
                                margin: const EdgeInsets.all(16.0),
                                child: new Container(
                                  width: 70.0,
                                  height: 70.0,
                                ),
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  color: Colors.white,
                                  image: new DecorationImage(
                                      image: AssetImage(widget.title == 'Programación General' ? listProgG[index]['photo'] : listProg[index]['photo']),
                                      fit: BoxFit.cover
                                  ),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: const Color(0xff3C3261),
                                        blurRadius: 15.0,
                                        offset: new Offset(2.0, 5.0))
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(3.0),
                                child: Text(widget.title == 'Programación General' ? listProgG[index]['date'] + '\n' + listProgG[index]['place'] :listProg[index]['date'] + '\n' + listProg[index]['place'],
                                  maxLines: 5,
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    fontFamily: 'Arvo',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        Container(
                          width: 100.0,
                          height: 0.5,
                          color: const Color(0xD2D2E1ff),
                          margin: const EdgeInsets.all(5.0),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}

