import 'package:cacied/componets/drawDrawer.dart';
import 'package:cacied/componets/drawLugares.dart';
import 'package:flutter/material.dart';

class Lugares extends StatefulWidget{
  final String title;
  Lugares({Key key,@required this.title});
  @override
  _LugaresState createState() => _LugaresState();
}

class _LugaresState extends State<Lugares>{
  var lugares_list =[
    {
      "name": "Universidad de Nariño",
      "description": "Actualmente, la Universidad de Nariño cuenta con 11 Facultades, 50 programas académicos de pregrado de los cuales 15 se encuentran acreditados en alta calidad, 19 programas académicos de postgrado propios y 7 en Convenio. Se puede afirmar que el “Alma Mater” a través del mejoramiento permanente, impulsa con tenacidad los campos de la investigación, la docencia y proyección social, acordes con los retos que la modernidad le impone.",
      "photo": "images/udenar.jpg",
      "lat" : "1.2323",
      "lng" : "-77.2930"
    },
    {
      "name": "Universidad Mariana",
      "description": "Desde su fundación, la Universidad Mariana contribuye con el desarrollo de sus funciones misionales a la transformación del entorno social, educativo, ecológico, político, económico y cultural a través de las actividades realizadas desde sus diferentes Facultades, tanto en los programas presenciales como a distancia. En la actualidad cuenta con seis Unidades Académicas en las cuales se ofrece una variedad de programas tanto de pregrado como de postgrado, ellas son: Facultad de Educación, Facultad de Humanidades y Ciencias Sociales, Facultad de Ciencias de la Salud, Facultad de Ciencias Contables, Económicas y Administrativas, Facultad de Ingeniería y la Facultad de Postgrados y Relaciones Internacionales.",
      "photo": "images/unimar.jpg",
      "lat" :"1.223875",
      "lng" : "-77.283344"
    },
    {
      "name": "Universidad Cesmag",
      "description": "CESMAG es una universidad privada y católica franciscana colombiana ubicada en San Juan de Pasto, Colombia. Fue fundada por el sacerdote católico Guillermo de Castellana,​ tiene el nombre de la santa Maria Goretti, y cuenta con cinco facultades (Ciencias Sociales y Humanas, Ingeniería, Arquitectura y Bellas Artes, Ciencias Administrativas y Contables, Educación) que ofrecen un total de 12 programas de pregrado y 5 programas de posgrado.",
      "photo": "images/cesmag.jpg",
      "lat" :"1.208740",
      "lng" : "-77.278022"
    }
  ];

  var sitiosList = [
    {
      "name": "Laguna Verde del Volcán Azufral",
      "description": 'La Laguna Verde del Volcán Azufral en Nariño es una de las dos "Lagunas Verdes" que duermen su sueño eterno en los repliegues de los Andes colombianos (la otra es la Laguna Verde Encantada del Parque de los Nevados).\nLa Laguna Verde del Azufral llena el cráter del volcán del mismo nombre, que con sus 4.000 msnm es el más bajo de los volcanes activos de Nariño. El color de la laguna, de singular belleza, no es otro que el de las esmeraldas "gota de aceite", reputadas entre las más finas de Colombia y las más hermosas del mundo.',
      "photo":"images/sites/lagunaVerde.jpg",
      "lat" :"1.090823",
      "lng" : "-77.721762"
    },
    {
      "name": 'Laguna "La cocha"',
      "description": "La Laguna de Cocha, que en quechua quiere decir “Laguna”, está localizada a unos 20 Kilómetros de la zona urbana de Pasto, a 2.800 metros sobre el nivel del mar y rodeada de montañas se encuentra en la vertiente oriental del Nudo de los Pastos. En forma Elongada, mide 20 kilómetros de largo por 5 km de ancho, alcanzando una profundidad máxima de 75 metros.",
      "photo":"images/sites/la_cocha.jpg",
      "lat" :"1.130192",
      "lng" : "-77.149156"
    },
    {
      "name": "Santuario Las lajas",
      "description": "El santuario de Las Lajas, la iglesia de estilo gótico conocida como ‘Un milagro de Dios en el abismo’, es una joya de la ingeniería construida sobre el cañón del río Guáitara, cerca de Ipiales, en el lugar donde, según la leyenda, la indígena María Mueses y su hija Rosa vieron aparecer la imagen de la virgen en 1754. Esta iglesia es muy visitada por peregrinos de todo el mundo, especialmente los domingos. Es una de las iglesas mas importantes en Colombia.",
      "photo":"images/sites/las_lajas.jpg",
      "lat" :"0.805516",
      "lng" : "-77.586048"
    },
    {
      "name": "Plaza de Nariño",
      "description": "Esta plaza es la más céntrica e importante de Pasto, en la mitad de la plaza se encuentra una estatua de Antonio Nariño, el cual es un punto de referencia para quienes pasan por allí, sobre la estrella conocida como “El Sol de los Pastos”.",
      "photo":"images/sites/plaza_narino.jpg",
      "lat" :"1.214628",
      "lng" : "-77.278254"
    },
    {
      "name": "Museo del Carnaval",
      "description": "El Museo del Carnaval consta de dos secciones que inscriben y contextualizan su carácter: la sección prehispánica es la que documenta en sí la razón del carnaval, con referentes indigenistas y una lectura fotográfica del carnaval en sepia que transporta las imágenes del evento en su gestación como espectáculo público, en contraste con el colorido del actual.\nLa sección del Carnaval Artístico la componen todos los muñecos y piezas del evento.",
      "photo":"images/sites/museo_carnaval.jpg",
      "lat" :"1.230520",
      "lng" : "-77.286623"
    },
    {
      "name": "Museo del Oro",
      "description": "Museo del Oro Nariño – Banco de la República, inaugurado en 1984 y reinaugurado el 9 de diciembre de 2016, presenta una mirada contemporánea sobre las sociedades prehispánicas de la región de Pasto. Adicionalmente, trata el periodo colonial y la diversidad cultural que fomentó la llegada de otras poblaciones indígenas, africanas y europeas a la zona.",
      "photo":"images/sites/museo_oro.jpg",
      "lat" :"1.211609",
      "lng" : "-77.276673"
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
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                      itemCount: widget.title == 'Lugares' ? lugares_list.length : sitiosList.length,
                      itemBuilder: (context, index){
                        return DrawLugares(
                          name: widget.title == 'Lugares' ? lugares_list[index]['name'] : sitiosList[index]['name'],
                          description: widget.title == 'Lugares' ? lugares_list[index]['description'] : sitiosList[index]['description'],
                          image: widget.title == 'Lugares' ? lugares_list[index]['photo'] : sitiosList[index]['photo'],
                          lat: double.parse(widget.title == 'Lugares' ? lugares_list[index]['lat'] : sitiosList[index]['lat']),
                          lng: double.parse(widget.title == 'Lugares' ? lugares_list[index]['lng'] : sitiosList[index]['lng']),
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}