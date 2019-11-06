import 'package:cacied/pages/ponencia.dart';
import 'package:flutter/material.dart';

class ProgramacionGeneral extends StatefulWidget{
  final String title;
  final String day;
  final String imageBar;
  ProgramacionGeneral({Key key, @required this.title, @required this.day, @required this.imageBar});
  @override
  _ProgramacionGeneralState createState () => _ProgramacionGeneralState();
}

class _ProgramacionGeneralState extends State<ProgramacionGeneral>{
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
                      widget.imageBar,
                      fit: BoxFit.cover,
                    )
                ),
              ),

            ];
          },
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new StuffInTiles(widget.day == '6' ? listProgramacionMariana[index] : widget.day == '06' ? listProgramacionUDENAR6[index] : widget.day == '7' ? listProgramacionCesmag[index] : listProgramacionUDENAR[index], context);
            },
            itemCount: widget.day == '6' ? listProgramacionMariana.length : widget.day == '06' ? listProgramacionUDENAR6.length : widget.day == '7' ? listProgramacionCesmag.length : listProgramacionUDENAR.length,
          )
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  BuildContext myContext;
  StuffInTiles(this.myTile, this.myContext);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: (){
            if(t.hour != '' && t.title != 'RECESO'){
              Navigator.push(myContext,
                  MaterialPageRoute(builder: (context){
                    return Ponencia(
                      presentation: t.title,
                      author: t.author,
                      hour: t.hour,
                      place: t.place,
                      stage: t.stage,
                      lat: t.lat,
                      lng: t.lng,
                    );
                  })
              ) ;
            }
          },
          //subtitle: new Text("Subtitle"),
          leading: new Text(t.hour),
          selected: true,
          //trailing: new Text("trailing"),
          title: new Text(t.title));

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  String hour;
  String author;
  String place;
  String stage;
  double lat;
  double lng;
  List<MyTile> children;
  MyTile(this.title, this.hour, this.author, this.place, this.stage, this.lat, this.lng, [this.children = const <MyTile>[]]);
}

List<MyTile> listProgramacionMariana = <MyTile>[
  new MyTile(
      'Registro',
      '07:00 - 9:00 AM',
      'CACIED 2019',
      'Universidad Mariana',
      '',
      1.223875,
      -77.283344,
  ),
  new MyTile(
    'Inauguración',
    '09:00 - 10:00 AM',
    'CACIED 2019',
    'Universidad Mariana',
    'AuditorioMadreCaridad',
    1.223875,
    -77.283344,
  ),
  new MyTile(
    'Receso',
    '10:00 - 10:30 AM',
    '',
    '',
    '',
    0,
    0,
  ),
  new MyTile(
    'Conferencia Magistral: La formación de científicos de datos',
    '10:30 AM -12 PM',
    'PhD. Marcelo Soria - UBA (Argentina)',
    'Universidad Mariana',
    '',
    1.223875,
    -77.283344,
  ),

  new MyTile(
    'Ponencias',
    '02:00 - 04:00 PM',
    'Lineas Gestión del Conocimiento  - Aud. MadreCaridad.\n\nIngeniería de Software - Aud. San José.\n\nEducación en Ingeniería - Aud. JesusdeNazareth',
    'Universidad Mariana',
    '',
    1.223875,
    -77.283344,
  ),
  new MyTile(
    'Receso',
    '04:00 - 04:30  PM',
    '',
    '',
    '',
    0,
    0,
  ),
  new MyTile(
    'Ponencias',
    '04:30 - 06:00  PM',
    'Lineas Gestión del Conocimiento Aud. Madre Caridad.\n\nIngeniería de Software, Aud. San José.\n\nIOT y Telecomunicaciones, Aud. JesusdeNazareth.',
    'Universidad Mariana',
    '',
    1.223875,
    -77.283344,
  ),
];

List<MyTile> listProgramacionUDENAR6 = <MyTile>[
  MyTile(
    'TALLER PARA DOCENTES, PONENTES Y POSTERISTAS',
    '',
    '',
    '',
    '',
    0,
    0,
  ),
  MyTile(
    'Taller: Métodos de regresión en aprendizaje estadistico.',
    '06:00 - 08:00 PM',
    'CACIED 2019\n\nCupos: 100\n\nIsncripciones: 6 de Noviembre - Sitio Oficial de Cacied.',
    'Universidad de Nariño',
    'Auditorio Edificio tecnológico'
    ,1.2323,
    -77.2930,
  ),
  MyTile(
    'Exclusivo para docentes, ponentes y posteristas',
    '',
    '',
    '',
    '',
    0,
    0,
  ),
];

List<MyTile> listProgramacionCesmag = <MyTile>[
  MyTile(
    'Ponencias',
    '08:00 - 10:00 AM',
    'Lineas Gestión del Conocimiento, Salón: B317 Sede B\n\nIngeniería de Software, Salón: B318 Sede B\n\nEducación en Ingeniería, Salón: B327 Sede B',
    'Universidad Cesmag',
    '',
    1.208740,
    -77.278022,
  ),
  MyTile(
    'Taller: Hacking Web',
    '08:00 - 10:00 AM',
    'Mauricio Chaves\nCupos: 40',
    'Universidad Cesmag',
    'Aula 1, Cuarto Piso Edificio San Francisco',
    1.208740,
    -77.278022,
  ),
  MyTile(
    'Taller: ¿Cómo nos mienten las gráficas?',
    '08:00 - 10:00 AM',
    'Alvaro Martinez\nCupos: 35',
    'Universidad Cesmag',
    'Aula 7, – Tercer Piso Edificio San Francisco',
    1.208740,
    -77.278022,
  ),
  new MyTile(
    'Receso',
    '10:00 - 10:30 AM',
    '',
    '',
    '',
    0,
    0,
  ),
  MyTile(
    'Ponencias',
    '10:30 - 12:30 PM',
    'Lineas Gestión del Conocimiento, Salón: B317 Sede B\n\n IOT y Telecomunicaciones, Salón: B318 Sede B\n\nEducación en Ingeniería, Salón: B327 Sede B',
    'Universidad Cesmag',
    '',
    1.208740,
    -77.278022,
  ),
  MyTile(
    'Taller: Hacking Web',
    '10:30 - 12:30 PM',
    'Mauricio Chaves\nCupos: 40',
    'Universidad Cesmag',
    'Aula 1, Cuarto Piso Edificio San Francisco',
    1.208740,
    -77.278022,
  ),
  MyTile(
    'Taller: ¿Cómo nos mienten las gráficas?',
    '10:30 - 12:30 PM',
    'Alvaro Martinez\nCupos: 35',
    'Universidad Cesmag',
    'Aula 7, – Tercer Piso Edificio San Francisco',
    1.208740,
    -77.278022,
  ),
  MyTile(
    'Conferencia magistral: Ciencia de datos desde la estadística',
    '02:00 - 04:00 PM',
    'PhD. Ramón Giraldo\nUniversidad Nacional(Colombia).',
    'Universidad Cesmag',
    'AuditorioSanFrancisco.',
    1.208740,
    -77.278022,
  ),
  new MyTile(
    'Receso',
    '04:00 - 04:30 PM',
    '',
    '',
    '',
    0,
    0,
  ),
  new MyTile(
    'Sesión de posters - Coctel de Bienvenida',
    '04:30 - 06:30 PM',
    'CACIED 2019',
    'I.E.M. María Goretti.',
    'Auditorio San Pio de Pietrelcina',
    1.20884,
    -77.27882,
  ),
];

List<MyTile> listProgramacionUDENAR = <MyTile>[
  MyTile(
    'Conferencia Magistral: El papel del CISO en las organizaciones',
    '08:00 - 09:30 AM',
    'Mg. Esteban Burgos\nUniversidad de Nariño (Colombia)',
    'Universidad de Nariño',
    'Auditorio Luis Santander'
    ,1.2323,
    -77.2930,
  ),
  MyTile(
    'Conferencia magistral: La supremacía de los monos, rippers y robots sobre los tester',
    '10:30 - 11:30 AM',
    'PhD.  - Mario Linares\nUniversidad de los Andes (Colombia)',
    'Universidad de Nariño',
    'Auditorio Luis Santander'
    ,1.2323,
    -77.2930,
  ),
  MyTile(
    'Premiación mejores ponencias, posters. Cierre del evento.',
    '11:30 - 12:00 PM',
    'CACIED 2019',
    'Universidad de Nariño',
    'Auditorio Luis Santander'
    ,1.2323,
    -77.2930,
  ),
];