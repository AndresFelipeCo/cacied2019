import 'package:flutter/material.dart';

class AcercaDe extends StatefulWidget{
  final String title;
  AcercaDe({Key key,@required this.title});
  @override
  _AcercaDeState createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe>{

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
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Container(
                            margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                            child: new Column(children: [
                              new Text('\n\nDETALLES DE CACIED 2019\n',
                                style: new TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Arvo',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              new Padding(padding: const EdgeInsets.all(2.0)),
                              new Text('CACIED será un lugar de encuentro de investigadores, docentes, profesionales y estudiantes de los países andinos con el fin de compartir y socializar sus experiencias e investigaciones en las Ciencias de la Computación, Informática y Educación en Ingeniería de Sistemas.\n\nCACIED se realizará en las instalaciones de las Universidades de Nariño, Mariana y CESMAG en la ciudad de San Juan de Pasto, capital del departamento de Nariño (Colombia).',
                                maxLines: 30,
                                style: new TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Arvo'
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          )
                      ),
                    ],
                  ),
                  new Container(
                    width: 300.0,
                    height: 0.5,
                    color: const Color(0xD2D2E1ff),
                    margin: const EdgeInsets.all(16.0),
                  ),
                  Container(
                        margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                        child: new Column(children: [
                          new Text('\nDESARROLLADORES DE LA APLICACIÓN MÓVIL\n',
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Arvo',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),

                        ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),

                  Column(
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
                                    image: AssetImage('images/AndresFelipe.jpg'),
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

                          new Expanded(
                              child: new Container(
                                margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                                child: new Column(children: [
                                  new Text('Andrés Felipe Burbano Salazar',
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Arvo',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text('Ingeniería de Sistemas - Universidad de Nariño',
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

                      Container(
                        width: 100.0,
                        height: 0.5,
                        color: const Color(0xD2D2E1ff),
                        margin: const EdgeInsets.all(5.0),
                      )
                    ],
                  ),
                  Column(
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
                                    image: AssetImage('images/Franklin.jpeg'),
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

                          new Expanded(
                              child: new Container(
                                margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                                child: new Column(children: [
                                  new Text('Franklin Eduardo Jiménez Giraldo',
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Arvo',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text('Ingeniería de Sistemas - Universidad Mariana',
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

                      Container(
                        width: 100.0,
                        height: 0.5,
                        color: const Color(0xD2D2E1ff),
                        margin: const EdgeInsets.all(5.0),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}