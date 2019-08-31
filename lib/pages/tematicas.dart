import 'package:cacied/componets/drawDrawer.dart';
import 'package:flutter/material.dart';

class Tematicas extends StatelessWidget{
  var tematicas = [
    {
      "name":"Ingeniería de Software y Programación"
    },
    {
      "name":"Gestión de Información"
    },
    {
      "name":"Inteligencia de Negocios"
    },
    {
      "name":"Data mining y Big Data"
    },
    {
      "name":"Sistemas Inteligentes y de Conocimiento"
    },
    {
      "name":"Informática y Telecomunicaciones"
    },
    {
      "name":"Educación en Ingeniería de Sistemas, Informática y Computación"
    },
  ];
  final String  title;
  Tematicas({Key key,@required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      'images/afiche.png',
                      fit: BoxFit.cover,
                    )
                ),
              ),

            ];
          },
          body:ListView.builder(
            itemCount: tematicas.length,
            itemBuilder: (context, index){
              return Container(
                  margin: const EdgeInsets.all(16.0),
                  child: new Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.description, color: Colors.blueAccent,),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              child: Text(tematicas[index]['name'],
                                maxLines: 5,
                                style: new TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Arvo',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45
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
                        margin: const EdgeInsets.all(16.0),
                      )
                    ],
                  )
              );
            },
          )
      ),
    );
  }

}