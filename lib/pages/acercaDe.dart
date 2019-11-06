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
        body: Center(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}