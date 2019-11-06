import 'package:flutter/material.dart';

import 'maps.dart';

class Conferencista extends StatefulWidget{
  final String name;
  final String photo;
  final String conference;
  final String formacion;
  final String areas;
  final String place;
  final String stage;
  final String hour;
  final double lat;
  final double lng;
  Conferencista({Key key,
    @required this.name,
    @required this.photo,
    @required this.conference,
    @required this.formacion,
    @required this.areas,
    @required this.place,
    @required this.stage,
    @required this.hour,
    @required this.lat,
    @required this.lng
  });
  @override
  _ConferencistaState createState() => _ConferencistaState();
}

class _ConferencistaState extends State <Conferencista>{
  Color mainColor = const Color(0xff3C3261);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      widget.photo,
                      fit: BoxFit.cover,
                    )
                ),
              ),

            ];
          },
          body: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.conference.toString(),
                        maxLines: 3,
                        style: new TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 0.5,
                      color: const Color(0xD2D2E1ff),
                      margin: const EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Formación".toString(),
                        style: new TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.formacion.toString(),
                        maxLines: 30,
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 0.5,
                      color: const Color(0xD2D2E1ff),
                      margin: const EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Áreas de interés:".toString(),
                        style: new TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.areas.toString(),
                        maxLines: 30,
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontFamily: 'Arvo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 0.5,
                      color: const Color(0xD2D2E1ff),
                      margin: const EdgeInsets.all(5.0),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return Maps(
                                  title: widget.place,
                                  lat: widget.lat,
                                  lng: widget.lng
                              );
                            })
                        ) ;
                      },
                      child: Row(
                        children: <Widget>[
                          new Padding(
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
                                    image: AssetImage('images/007-global.png'),
                                    fit: BoxFit.cover
                                ),
                                boxShadow: [
                                  new BoxShadow(
                                      color: mainColor,
                                      blurRadius: 15.0,
                                      offset: new Offset(2.0, 5.0))
                                ],
                              ),
                            ),
                          ),
                          new Expanded(
                              child: new Container(
                                margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                                child: new Column(children: [
                                  new Text(widget.place.toString(),
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Arvo',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(widget.stage.toString(),
                                    maxLines: 30,
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                      fontFamily: 'Arvo',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text(widget.hour.toString(),
                                    maxLines: 30,
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                      fontFamily: 'Arvo',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                                  crossAxisAlignment: CrossAxisAlignment.start,),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}