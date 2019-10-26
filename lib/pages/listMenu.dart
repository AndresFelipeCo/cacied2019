import 'package:cacied/componets/drawDrawer.dart';
import 'package:cacied/componets/drawListMenu.dart';
import 'package:cacied/pages/conferencia.dart';
import 'package:cacied/pages/conferencista.dart';
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
      "name": "Mario Linares Vásquez",
      "conference": "La supremacía de los monos, rippers y robots sobre los tester",
      "place": "Universidad de Nariño",
      "photo": 'images/conference/MarioLinaresV.jpg',
      "lat" :"1.2323",
      "lng" : "-77.2930",
      "formacion": "Profesor Asistente de la Universidad de los Andes (Colombia). Ingeniero de Sistemas y Computación de la Universidad Nacional, Magister en Ingeniería en Sistemas y Computación de la misma Universidad. Doctor en Ciencias de Computación de The College of William and Mary, VA, US. Ganador de varios distinguished paper awards de la ACM. Ganador de un reserach grant de Google Latam.",
      "areas": "Ingeniería de Software Automatizada\n\nDiseño Universal\n\nMinería de Repositorios de Software\n\nDesarrollo de Apps con Impacto Social",
    },
    {
      "name": "Marcelo Abel Soria",
      "conference": "LA FORMACIÓN DE CIENTÍFICOS DE DATOS",
      "place": "Universidad de Nariño",
      "photo": 'images/conference/MarceloSoria.jpg',
      "lat" :"1.2323",
      "lng" : "-77.2930",
      "formacion": "Doctor en Ciencias Biológicas. Universidad de Buenos Aires. 1997. Tema de tesis: Producción de ácido cítrico por miembros del género Aspergillus. Calificación: sobresaliente.\n\n Licenciado en Ciencias Biológicas (Diploma de honor). Facultad de Ciencias Exactas y Naturales. UBA. l990. Orientación: Genética Molecular y Biotecnología.",
      "areas": "Microbiología y agricultura\n\nMinería de Datos\n\nBioestadística",
    },
    {
      "name": "Ramón Giraldo Henao",
      "conference": "CIENCIA DE DATOS DESDE LA ESTADISTICA",
      "place": "Universidad de Nariño",
      "photo": 'images/conference/RamonGiraldo.jpg',
      "lat" :"1.2323",
      "lng" : "-77.2930",
      "formacion": "Estadístico. Universidad Nacional de Colombia, Bogotá, 1986-1993. \n Especialista en Estadística, Universidad Nacional de Colombia, Bogotá, 1994-1996. Maestría en Estadística, Universidad Nacional de Colombia, Bogotá,1998-2002. Doctor en Estadística. Universidad Politécnica de Cataluña, Barcelona, España. 2005-2009.",
      "areas": "Estadística espacial\n\nEstadística no paramétrica\n\nAnálisis de datos funcionales\n\nEnseñanza de la estadística usando métodos de Monte Carlo\n\nAplicaciones de la estadística en problemas ambientales",
    },
    {
      "name": "Cesar Esteban Burgos Ramirez",
      "conference": "El Oficial de Seguridad de la Información: un enfoque estratégico al aseguramiento de la información empresarial",
      "place": "Universidad de Nariño",
      "photo": 'images/conference/EstebanBurgos.jpg',
      "lat" :"1.2323",
      "lng" : "-77.2930",
      "formacion": "Ingeniero de Sistemas de la Universidad de Nariño, Magíster en Seguridad de la Información de la Universidad de los Andes, Profesional con más de 5 años de trayectoria en el campo académico y empresarial de la seguridad de la información. Actualmente lidera e impulsa en su región la seguridad de la información e informática en el sector financiero, desempañándose como CISO (chief information security officer), su experiencia se centraliza en: Sistemas de Gestión de Seguridad de la información, Continuidad del Negocio y DRP (Disaster Recovery Plan), gestión de riesgos y vulnerabilidades de la información, seguridad móvil, Gestión de Incidentes de Seguridad de la Información, infraestructura segura de TI y Protección de datos personales.",
      "areas": "Seguridad de la Información",
    },
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
                        itemCount: widget.title == 'Conferencias' ? ponencias_list.length : conferencistas_list.length,
                        itemBuilder: (context, index){
                          return FlatButton(
                            child: DrawListMenu(
                              title: widget.title == 'Conferencias' ? 'Grupo: ' + ponencias_list[index]['group'] : conferencistas_list[index]['name'],
                              subtitle: widget.title == 'Conferencias' ? null : 'Conferencia:',
                              description: widget.title == 'Conferencias' ? ponencias_list[index]['name'] : conferencistas_list[index]['conference'],
                              icon: widget.title == 'Conferencias' ? null : conferencistas_list[index]['photo'],
                            ),
                            onPressed: () {
                              if(widget.title == 'Conferencias'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context){
                                      return Conferencia(
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
                                      return Conferencista(
                                        name: conferencistas_list[index]['name'],
                                        photo: conferencistas_list[index]['photo'],
                                        conference: conferencistas_list[index]['conference'],
                                        formacion: conferencistas_list[index]['formacion'],
                                        areas: conferencistas_list[index]['areas'],
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