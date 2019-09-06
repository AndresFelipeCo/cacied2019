import 'package:cacied/componets/drawDrawer.dart';
import 'package:cacied/componets/drawListMenu.dart';
import 'package:cacied/pages/ponencia.dart';
import 'package:cacied/pages/ponente.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatefulWidget{
  final String title;
  ListMenu({Key key,@required this.title});
  @override
  _ListMenuState createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu>{
  var ponencias_list = [
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Metodología temporal para la recuperación de áreas perdidas en imágenes satelitales M0D09GA",
      "group": "1",
      "site": "Auditorio Madre Caridad Universidad Mariana",
      "day" : "1 Nov",
      "hour": "2:00 pm",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
  ];

  var conferencistas_list = [
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    },
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    },
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    },
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    },
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    },
    {
      "name": "JORGE VILLALOBOS SALCEDO",
      "conference": "Formando arquitentos de TIC",
      "place": "Auditorio Madre Caridad Universidad Mariana",
      "photo": 'images/conference/01.jpg',
      "lat" :"1.223875",
      "lng" : "-77.283344",
      "formacion": "Ph.D en Informática, Universidad Joseph Fourier (Grenoble, Francia), Master en Informática, Institut National Polytechnique (Grenoble, Francia), Ingeniero de Sistemas y Computación, Universidad de los Andes, Postdoctorado, Laboratorio LSR (Grenoble, Francia), Profesor Asociado Departamento de Ingeniería de Sistemas y Computación de la Universidad de los Andes. Investigador y consultor en las áreas de Arquitectura empresarial, Arquitectura de procesos y Arquitectura de solución.\nPertenece al Grupo de investigación TICSw - Tecnologías de la Información y Construcción de Software - TICSw"
    }
  ];

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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                        itemCount: widget.title == 'Ponencias' ? ponencias_list.length : conferencistas_list.length,
                        itemBuilder: (context, index){
                          return FlatButton(
                            child: DrawListMenu(
                              title: widget.title == 'Ponencias' ? 'Grupo: ' + ponencias_list[index]['group'] : conferencistas_list[index]['name'],
                              subtitle: widget.title == 'Ponencias' ? null : 'Conferencia:',
                              description: widget.title == 'Ponencias' ? ponencias_list[index]['name'] : conferencistas_list[index]['conference'],
                              icon: widget.title == 'Ponencias' ? null : conferencistas_list[index]['photo'],
                            ),
                            onPressed: () {
                              if(widget.title == 'Ponencias'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context){
                                      return Ponencia(
                                        name: ponencias_list[index]['name'],
                                        group: 'Grupo '+ponencias_list[index]['group'],
                                        site: ponencias_list[index]['site'],
                                        day: ponencias_list[index]['day'],
                                        hour: ponencias_list[index]['hour'],
                                        lat: double.parse(ponencias_list[index]['lat']),
                                        lng: double.parse(ponencias_list[index]['lng'])
                                      );
                                    })
                                ) ;
                              }

                              if(widget.title == 'Conferencistas'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context){
                                      return Ponente(
                                        name: conferencistas_list[index]['name'],
                                        photo: conferencistas_list[index]['photo'],
                                        conference: conferencistas_list[index]['conference'],
                                        formacion: conferencistas_list[index]['formacion'],
                                        place: conferencistas_list[index]['place'],
                                        lat: double.parse(conferencistas_list[index]['lat']),
                                        lng: double.parse(conferencistas_list[index]['lng']),
                                      );
                                    })
                                );
                              }
                            },
                          );
                        },
                      )
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}