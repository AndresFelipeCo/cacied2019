import 'package:cacied/pages/ponencia.dart';
import 'package:flutter/material.dart';

class LineasTematicas extends StatefulWidget{
  final String title;
  final String day;
  final String imageBar;
  LineasTematicas({Key key, @required this.title, @required this.day, @required this.imageBar});
  @override
  _LineasTematicasState createState () => _LineasTematicasState();
}

class _LineasTematicasState extends State<LineasTematicas>{
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
              return new StuffInTiles(widget.day == '6' ? listProgramacionMariana[index] : widget.day == '7' ? listProgramacionCesmag[index] : listProgramacionUDENAR[index], context);
            },
            itemCount: widget.day == '6' ? listProgramacionMariana.length : widget.day == '7' ? listProgramacionCesmag.length : listProgramacionUDENAR.length,
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

List<MyTile> listProgramacionUDENAR = <MyTile>[
  MyTile(
    'Premiación mejores ponencias, posters. Cierre del evento.',
    '11:30 - 12:00 PM', 'CACIED 2019','Universidad de Nariño',
    'Auditorio Luis Santander'
    ,1.2323,
    -77.2930,
  ),
];


List<MyTile> listProgramacionMariana = <MyTile>[
  new MyTile(
      'Gestión del Conocimiento', '', '','','' ,0,0,
      <MyTile>[
        new MyTile(
          'EL IMPACTO DE LAS APLICACIONES WEB: CASO CAJA DE COMPENSACION',
          '2:00 PM',
          'Yineth Marcela Reyes Quintero; Johan Esteban Ocampo Gómez; Luis Alberto Parra Pérez',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'DATAMART PARA GESTIÓN DE INFORMACIÓN HISTORICA DE LAS ESTACIONES HIDROMETRICAS Y CLIMATICAS-CRC',
          '2:20 PM',
          'Fredy Alonso Vidal Alegria; Paola Sarria Mera; Adriana Collazos; María del Carmen Lopez; Humberto Martínez; Ricardo Timaran Pereira',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'DATAMART DE INFORMACION HISTORICA SOBRE MORBILIDAD DEL HOSPITAL SUSANA LOPEZ DE VALENCIA',
          '2:40 PM',
          'Mario Alberto Martinez Muñoz; Fredy Alonso Vidal Alegria; John Jairo Arévalo Hoyos; Robert Camacho; Cristian Diego González Hurtado',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'INTEGRACION DE LA INTELIGENCIA NATURAL Y ARTIFICIAL: INFOVIS + METODOS KERNEL RD.',
          '3:00 PM',
          'Juan Carlos Alvarado Perez; Harold Stiven Cordoba Pérez; Omar Alexander Revelo Zambrano',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'HERRAMIENTAS Y GUÍA METODOLOGICA PARA EL LEVANTAMIENTO DE INFORMACION DE BIENES MUEBLES, CASO UNIVERSIDAD DE NARIÑO',
          '3:20 PM',
          'Jenny Lorena Luna Eraso; Jorge Albeiro Rivera Rosero',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'FORMULACIÓN DE LA POLÍTICA DE LAS TECNOLOGÍAS DE LA INFORMACIÓN Y LAS COMUNICACIONES, CASO UNIVERSIDAD DE NARIÑO, 2018.',
          '3:40 PM',
          'Cristian David Chamorro; Jenny Lorena Luna Eraso',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        /* new MyTile(
          '-----IDENTIFICACION DE PATRONES DE DESEMPEÑO ACADEMICO EN LAS PRUEBAS SABER 9 CON TECNICAS PREDICTIVAS DE MINERIA DE DATOS',
          '3:00 PM',
          'Ricardo Mauricio Ortega Mipaz; Ricardo Timarán Pereira',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),*/
        new MyTile(
          'RECESO',
          '4:00 PM\n4:30 PM',
          '','','',0,0,
        ),
        new MyTile(
          'DIAGNOSTICO DE LAS TAREAS DE PROCESAMIENTO DE DATOS EN LOS GRUPOS DE INVESTIGACIÓN DE LA UNIVERSIDAD DE NARIÑO',
          '4:30 PM',
          'Leidy Andrade; José Daniel Jojoa; Gonzalo Hernández; Diego Benavides',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'ANALISIS DESCRIPTIVO Y PREDICTIVO DE BRECHAS DE GENERO EN LAS PRUEBAS SABER',
          '4:50 PM',
          'Alisson Catalina Celeita Gutierrez; Angie Paola Manrique Ravelo; Corin Jazmin Viracacha Viracacha; Cesar Yesid Barahona Rodríguez',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'BASES DE DATOS NOSQL: UN COMPARATIVO DESDE LO DOCUMENTAL HACIA LO EXPERIMENTAL',
          '5:10 PM',
          'Álvaro Martínez Navarro; Giovanni Hernández; Franklin Jiménez; Robinson Jiménez',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
      ]
  ),

  new MyTile(
      'Ingeniería de Software','','','', '', 0,0,
      <MyTile>[
        new MyTile(
          'CASANDRA “APP PARA EL LEVANTAMIENTO DE INFORMACIÓN SOBRE ESTRUCTURAS EXPUESTAS A AMENAZAS DE TIPO VOLCÁNICO',
          '2:00 PM',
          'German Jurado; Gustavo Guerrero; Gonzalo Hernández',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'SOFTWARE PARA EL CONTROL DE PLANES DE MEJORAMIENTO UTILIZANDO METODOLOGÍAS AGILES',
          '2:20 PM',
          'Cristhian Rodríguez Galindo; Yohan Roldan Moreno; Francisco Lanza Rodríguez',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'EVALUACIÓN DE USABILIDAD APLICADO A PORTALES WEB PARA LA IMPLEMENTACIÓN DE LA ESTRATEGIA DE GOBIERNO EN',
          '2:40 PM',
          'Francisco Nicolas Javier Solarte Solarte; Jesús Germán Cortés Camacho',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'DISEÑO DE UN VIDEO JUEGO EDUCATIVO, A TRAVÉS DE LA ADAPTACIÓN DE LA METODOLOGÍA ÁGIL XP.',
          '3:00 PM',
          'Jorge Collazos',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'MODULO INFORMÁTICO PARA EL APOYO AL PROCESO DE REGISTROS CALIFICADOS',
          '3:20 PM',
          'Anggy Jirley Arguello Patarroyo; Cristian Alejandro Estevéz Acevedo; Cesar Yesid Barahona Rodríguez',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'NIVEL DE ALFABETIZACIÓN EN ARQUITECTURA EMPRESARIAL: CASO EMPRESAS DE PASTO',
          '3:40 PM',
          'Álvaro Martínez Navarro; Giovanni Hernández; Franklin Jiménez; Robinson Jiménez',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'RECESO',
          '4:00 PM\n4:30 PM',
          '','', '',0,0,
        ),
        new MyTile(
          'UNA APROXIMACIÓN A LAS TÁCTICAS ARQUITECTÓNICAS DE SEGURIDAD PARA E-VOTING',
          '4:30 PM',
          'Francisco Zambrano; Daniel Burbano; Giovanni Hernández; Franklin Jiménez',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'SISTEMA INFORMÁTICO COMO APOYO A LA DIRECCIÓN DE PROYECTOS DE DESARROLLO DE SOFTWARE INTEGRANDO CMMI-DEV, PMBOK Y SCRUM',
          '4:50 PM',
          'Gabriel Guzman; Juan Pardo Moreno; Francisco Lanza Rodriguez; Gina Valenzuela Sabogal',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'ANÁLISIS DE RENDIMIENTO EN EXTRACCIÓN DEL CÓDIGO DE CADENA VCC REALIZADO EN EL LENGUAJE DE PROGRAMACIÓN JAVA.',
          '5:10 PM',
          'Jorge Andres Duran Perez; Carlos Alfonso Pinilla Garzón',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'PROCESAMIENTO DE RDF STREAM SOBRE APACHE FLINK',
          '5:30 PM',
          'Esteban Danilo Diaz Riascos; Oscar Orlando Ceballos Argote; Andrés Mauricio Castillo Robles; Gonzalo José Hernández Garzón',
          'Universidad Mariana',
          'Auditorio San José',
          1.223875,
          -77.283344,
        ),
      ]
  ),
  new MyTile(
      'Educación en Ingeniería de Sistemas', '', '','', '',0,0,
      <MyTile>[
        MyTile(
          'EL SOFTWARE COMO HERRAMIENTA DIDÁCTICA EN LAS CIENCIAS BÁSICAS DE EDUCACIÓN SUPERIOR',
          '2:00 PM',
          'Hector Alirio Guerrero; Ricardo Javier Hernández Revelo',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'ENSEÑANDO PROGRAMACIÓN LINEAL UTILIZANDO HOJAS DE CÁLCULO CON ENFOQUE GEOMÉTRICO PARA INGENIERÍA',
          '2:20 PM',
          'José Fabio Davila Escobar',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'SISTEMA DE ALERTA TEMPRANA DE POTENCIAL REPITENCIA Y DESERCIÓN ESTUDIANTIL',
          '2:40 PM',
          'Omar Antonio Vega; Yesid Alejandro Maya Játiva; Javier Alejandro Jiménez Toledo',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'UNA MIRADA A LA CARA OCULTA DE LAS TIC',
          '3:00 PM',
          'Omar Antonio Vega',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'UNA PRÁCTICA PEDAGÓGICA Y DE ENSEÑANZA DE EMPRENDIMIENTO CON EL MÉTODO COCOMO EN INGENIERÍA DE SISTEMAS DE LA UNIVERSIDAD CESMAG',
          '3:20 PM',
          'Liliana Ayala Guatusmal; Omar Revelo Zambrano',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'DERECHOS BÁSICOS DE APRENDIZAJE PARA EL ÁREA DE TECNOLOGÍA E INFORMÁTICA',
          '3:40 PM',
          'Cristian Yovao Dorado Ceballos; Ricardo Timarán Pereira',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'RECESO',
          '4:00 PM\n4:30 PM',
          '','', '', 0,0,
        ),
        MyTile(
          'LA SESIÓN DE EDUCACIÓN EN INGENIERIA DE SISTEMAS TERMINA A LAS 4:00 PM PARA DAR PASO A LA LINEA DE IOT EN LA SEGUNDA SESIÓN',
          '',
          '','', '',0,0,
        ),
      ]
  ),
  new MyTile(
      'IOT e Informatica y Telecomunicaciones', '', '', '', '', 0, 0,
      <MyTile>[
        MyTile(
          'SISTEMA IOT DE SEGURIDAD DE BAJO COSTO PARA EL ACCESO A VIVIENDAS',
          '4:30 PM',
          'Juan José Eraso Cabrera; Santiago Andrés Timana Guerrero; Jefferson Gabriel Cortes',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'MONITOR IOT DE CRECIMIENTO Y AMBIENTE PARA POLLOS',
          '4:50 PM',
          'Javier Andrés Rosas Villamarin; Diana Giselle Armero Molina',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'SISTEMA IOT DE LOCALIZACION PARA MENORES DE EDAD EN LAS DIFERENTES GUARDERIAS',
          '5:10 PM',
          'Andrés Narváez, Diego Pianda',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'SISTEMA DE BLOQUEO Y LOCALIZACIÓN DE MOTOS BASADO EN HERRAMIENTAS IOT DE BAJO COSTO.',
          '5:30 PM',
          'Juan Felipe Morales Narvaez; Andrés Felipe Quiñones Mesias; Juan Sebastián Rodriguez Mora',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
      ]
  )
];

List<MyTile> listProgramacionCesmag = <MyTile>[
  MyTile(
    'Talleres','','', '', '', 0, 0,
    <MyTile>[
      MyTile('Sesión 1','','', '', '', 0, 0,),
      MyTile(
        'Hacking Web',
        '8:30 AM\n10:00 AM',
        'Mauricio Chaves\nCupos: 40',
        'Universidad Cesmag',
        'Aula 1, Cuarto Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        '¿Cómo nos mienten las gráficas?',
        '8:30 AM\n10:00 AM',
        'Alvaro Martinez\nCupos: 35',
        'Universidad Cesmag',
        'Aula 7, – Tercer Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'RECESO',
        '10:00 AM\n10:30 AM',
        '','', '',0,0,
      ),
      MyTile('Sesión 2','','', '', '', 0, 0,),
      MyTile(
        'Hacking Web',
        '10:30 AM\n12:30 AM',
        'Mauricio Chaves\nCupos: 40',
        'Universidad Cesmag',
        'Aula 1, Cuarto Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        '¿Cómo nos mienten las gráficas?',
        '10:30 AM\n12:30 AM',
        'Alvaro Martinez\nCupos: 35',
        'Universidad Cesmag',
        'Aula7, – Tercer Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
    ],
  ),
  MyTile(
      'Gestión del Conocimiento','','', '', '', 0, 0,
      <MyTile>[
        MyTile(
          'UNA PROPUESTA BASADA EN ARQUITECTURA EMPRESARIAL PARA EL PROCESO DE ANÁLISIS FINANCIERO DE LAS PEQUEÑAS EMPRESAS COMERCIALES DE SAN JUAN DE PASTO',
          '8:00 AM',
          'Daniel Enríquez; Christian Rivera; Carlos López; Carlos López',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        /*MyTile(
        '---- AUTOMATIZACION DE UN SISTEMA ACUAPANICO PARA LA PRODUCCION AUTOSOSTENIBLE DE ESPECIES VEGETALES Y ANIMALES',
        '8:20 AM',
        'Jaime Eduardo Andrade Ramirez; Luz Dary Pedraza Hernández',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),*/
        MyTile(
          'COBIT COMO MARCO DE BUENAS PRÁCTICAS DE TI EN EL SECTOR DE LA SALUD PUBLICA EN PASTO - COLOMBIA',
          '8:20 AM',
          'Magda Salazar Suarez',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        new MyTile(
          'MSSOLANUM - MODELO SISTEMATIZADO PARA LA PLANIFICACION DEL CULTIVO DE PAPA EN NARIÑO',
          '8:40 AM',
          'Martha Carrillo Obando',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'ANÁLISIS Y GESTIÓN DE VULNERABILIDADES DE LAS APLICACIONES WEB',
          '9:00 AM',
          'Anivar Chaves Torres',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'SISTEMA PARA LA UBICACIÓN DE SECTORES DE CONCENTRACIÓN DE ACCIDENTES EN CARRETERAS',
          '9:20 AM',
          'Jhojan Córdoba Ordoñez\n\nNicolás Ibarra Portilla',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'RECESO',
          '10:00 AM\n10:30 AM',
          '','', '',0,0,
        ),
        MyTile(
          'COMPARACIONES TÉCNICAS Y ECONÓMICAS DEL USO DE CONTROLADORES MPC Y PID APLICADOS A UNA MÁQUINA EXTRUSORA DE POLIESTIRENO EN ICOTALLA S.A.S.',
          '10:30 AM',
          'Javier Suarez Jaramillo; Mateo Córdoba; John Barco Jiménez; Camilo Lagos Mora',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'APLICACIÓN MÓVIL ENCAMINADA AL FORTALECIMIENTO DE LA CULTURA VIAL, A PERSONAS ENTRE EDADES DE 18 A 30 AÑOS DE LA CIUDAD DE SAN JUAN DE PASTO',
          '10:50 PM',
          'Edwin Giovanni Insuasti Portilla; Jhon Fredy Montenegro Rosero',
          'Universidad Cesmag',
          'Salón B317 Sede B',
          1.208740,
          -77.278022,
        ),
      ]
  ),
  MyTile(
      'Ingeniería de Software', '', '', '', '', 0, 0,
      <MyTile>[
        new MyTile(
          'FLEXIBILIDAD EN LA GESTIÓN Y ADMINISTRACIÓN DE SERVICIOS A TRAVÉS DE UNA API GRAPHQL',
          '8:00 AM',
          'John Mario Getial Bolaños; David Alexander Cerón; Andrés Felipe Burbano;Franklin Eduardo Jimenez Giraldo',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'MOCKUPS EN LA ESPECIFICACIÓN DE REQUERIMIENTOS FUNCIONALES',
          '8:20 AM',
          'Andrés Arteaga; Juan Pablo Dulce; Manolo Pabón',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'PRÁCTICAS DE FLEXIBILIDAD PARA EQUIPOS QUE DESARROLLAN SOFTWARE',
          '8:40 AM',
          'Víctor Castro; Giovanni Hernández; Robinson Jiménez; Álvaro Martínez',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'TURISMO EN REALIDAD MIXTA: CIUDAD SORPRESA VIRTUAL',
          '9:00 AM',
          'Álvaro Santiago Salas Bolaños; Franklin Eduardo Jiménez Giraldo; Jhonatan Javier Lasso Rios; Álvaro Alexander Martínez Navarro',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'CLINISOFT: “SOFTWARE ESPECIALIZADO EN LA GESTIÓN DE HISTORIAS CLÍNICAS PARA LOS SERVICIOS DEL INSTITUTO "INEFCO"',
          '9:20 AM',
          'Andrés Felipe Moreno Dorado; Franklin Eduardo Jiménez Giraldo; Robinson Andrés Jiménez Toledo',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'COMPARATIVAS DE HERRAMIENTAS DE SEGURIDAD INFORMÁTICA EN EL PERITAJE FORENSE.',
          '9:40 AM',
          'Enmanuel Ochoa Cedeño; Edgar Dulce Villareal',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'RECESO',
          '10:00 AM\n10:30 AM',
          '','', '',0,0,
        ),
      ]
  ),
  MyTile(
      'Educación en Ingeniería de Sistemas','','', '', '', 0, 0,
      <MyTile>[
        MyTile(
          'INGENIERAS DE SISTEMAS EN LA UNIVERSIDAD DE NARIÑO (1965 -2015): LA FUGA DE BYTES',
          '8:00 AM',
          'Alejandra Zuleta',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'ABP EN INGENIERÍA DE SISTEMAS: UNA REVISIÓN DE LITERATURA DE ÁMBITO INTERNACIONAL',
          '8:20 AM',
          'Nancy Legarda; Alvaro Martínez-Navarro; Giovanni Hernández',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'PERCEPCIONES DEL GÉNERO FEMENINO RELACIONADAS CON LOS ESTUDIOS DE FORMACIÓN PROFESIONAL EN INGENIERÍA DE SISTEMAS EN EL DEPARTAMENTO DE NARIÑO. CASO: ESTUDIANTES GÉNERO FEMENINO GRADO ONCE.',
          '8:40 AM',
          'Jhonatan Canacuan; Linda Gongora; Vanessa Paz; Robinson Jiménez',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'UN ESQUEMA PARA LA GESTIÓN DEL LABORATORIO DE INGENIERÍA EMPRESARIAL EN LA UNIVERSIDAD EAFIT',
          '9:00 AM',
          'Dario Alejandro Mera Araujo',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'CARACTERIZACIÓN DE FÁBRICAS DE APRENDIZAJE EN LA EDUCACIÓN SUPERIOR: UN PRIMER PASO HACIA UNA FÁBRICA DE APRENDIZAJE EN INGENIERÍA DE SOFTWARE',
          '9:20 AM',
          'Camilo Burbano; Tatiana Delgado; Marisol Tabla; Giovanni Hernández',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'DESIGN THINKING, UNA ALTERNATIVA PARA EL DESARROLLO DE COMPETENCIAS DOCENTES CREATIVAS EN LA EDUCACIÓN SUPERIOR',
          '9:40 AM',
          'Diana Cabrera; Diana Guerrero; Giovanni Hernández',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'RECESO',
          '10:00 AM\n10:30 AM',
          '', '', '', 0, 0,
        ),
        MyTile(
          'PROYECTO DE INTERVENCIÓN PARA LA ATENCIÓN AL ALTO TIEMPO DE DURACIÓN PREVISTO PARA EL DESARROLLO DE UNA CARRERA PROFESIONAL DE INGENIERÍA DE SISTEMAS EN COLOMBIA, DESDE LA GESTIÓN EDUCATIVA ESTRATÉGICA',
          '10:30 AM',
          'Luis Obeymar Estrada Sapuyes',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'MODELO DE COMPETENCIAS DOCENTES DEL INGENIERO EN SU PAPEL DE FORMADOR DE NUEVOS INGENIEROS PARA UNA EDUCACIÓN DE CALIDAD EN EL SIGLO XXI.',
          '10:50 AM',
          'Fabio Andrés Bolaños Alomia; Ricardo Timarán Pereira',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'ENSEÑANZA POR DESCUBRIMIENTO APOYADA EN LAS TIC PARA FORTALECER LA MOTIVACIÓN ACADÉMICA EN LAS CIENCIAS NATURALES DE LOS ESTUDIANTES EN EL GRADO 9.2 DE LA INSTITUCIÓN EDUCATIVA MUNICIPAL CENTRO DE INTEGRACIÓN POPULAR PASTO',
          '11:10 AM',
          'Juliana García Rodriguez; Ana Laguna Tarapuez; Marcela Mora Insuasty; Alexandra Luna Acosta',
          'Universidad Cesmag',
          'Salón B327 Sede B',
          1.208740,
          -77.278022,
        ),
      ]
  ),
  MyTile(
      'IOT e Informatica y Telecomunicaciones','','', '', '', 0, 0,
      <MyTile>[
        MyTile(
          'Las ponencias pertenecientes a esta categoría inician en la segunda sesión del día, después del receso.',
          '',
          '', '', '', 0, 0,
        ),
        MyTile(
          'TIC AL SERVICIO DEL SECTOR RURAL',
          '10:30 AM',
          'Omar Antonio Vega',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'CARACTERIZACION DE UN CANAL DE COMUNICACIONES PARA SISTEMAS DWDM A 40 GBPS EN SISTEMAS DE FIBRA ÓPTICA CON DETECCIÓN COHERENTE',
          '10:50 AM',
          'Manuel Ernesto Bolaños González; Edgar Rodrigo Enríquez Rosero; Francisco Nicolas Solarte Solarte',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'DISEÑO DE ARREGLO DE ANTENAS PARA UN LECTOR RFID EN LA BANDA DE 900 MHZ',
          '11:10 AM',
          'Mario Fernando Henao Rosero; David Sebastián Gómez Eraso; Edison Romero Eraso',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
        MyTile(
          'APLICATIVO MOVIL INTERPRETE DE LENGUA DE SEÑAS COLOMBIANA ',
          '11:30 AM',
          'Ricardo Andrés Pantoja Moriano; Carlos Alberto Paredes Suarez; Manuel Ernesto Bolaños González',
          'Universidad Cesmag',
          'Salón B318 Sede B',
          1.208740,
          -77.278022,
        ),
      ]
  ),
];

/*

List<MyTile> listProgramacionMariana = <MyTile>[
  new MyTile(
      'Gestión del Conocimiento', '', '','','' ,0,0,
      <MyTile>[
        new MyTile(
          'DATAMART PARA GESTIÓN DE INFORMACIÓN HISTORICA DE LAS ESTACIONES HIDROMETRICAS Y CLIMATICAS-CRC',
          '2:00 PM',
          'Fredy Alonso Vidal Alegria; Paola Sarria Mera; Adriana Collazos; María del Carmen Lopez; Humberto Martínez; Ricardo Timaran Pereira',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'DATAMART DE INFORMACION HISTORICA SOBRE MORBILIDAD DEL HOSPITAL SUSANA LOPEZ DE VALENCIA',
          '2:20 PM',
          'Mario Alberto Martinez Muñoz; Fredy Alonso Vidal Alegria; John Jairo Arévalo Hoyos; Robert Camacho; Cristian Diego González Hurtado',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'INTEGRACION DE LA INTELIGENCIA NATURAL Y ARTIFICIAL: INFOVIS + METODOS KERNEL RD.',
          '2:40 PM',
          'Juan Carlos Alvarado Perez; Harold Stiven Cordoba Pérez; Omar Alexander Revelo Zambrano',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'IDENTIFICACION DE PATRONES DE DESEMPEÑO ACADEMICO EN LAS PRUEBAS SABER 9 CON TECNICAS PREDICTIVAS DE MINERIA DE DATOS',
          '3:00 PM',
          'Ricardo Mauricio Ortega Mipaz; Ricardo Timarán Pereira',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'EL IMPACTO DE LAS APLICACIONES WEB: CASO CAJA DE COMPENSACION',
          '3:20 PM',
          'Yineth Marcela Reyes Quintero; Johan Esteban Ocampo Gómez; Luis Alberto Parra Pérez',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'HERRAMIENTAS Y GUÍA METODOLOGICA PARA EL LEVANTAMIENTO DE INFORMACION DE BIENES MUEBLES, CASO UNIVERSIDAD DE NARIÑO',
          '3:40 PM',
          'Jenny Lorena Luna Eraso; Jorge Albeiro Rivera Rosero',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'RECESO',
          '4:00 PM\n4:30 PM',
          '','','',0,0,
        ),
        new MyTile(
          'FORMULACIÓN DE LA POLÍTICA DE LAS TECNOLOGÍAS DE LA INFORMACIÓN Y LAS COMUNICACIONES, CASO UNIVERSIDAD DE NARIÑO, 2018.',
          '4:30 PM',
          'Cristian David Chamorro; Jenny Lorena Luna Eraso',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'DIAGNOSTICO DE LAS TAREAS DE PROCESAMIENTO DE DATOS EN LOS GRUPOS DE INVESTIGACIÓN DE LA UNIVERSIDAD DE NARIÑO',
          '4:50 PM',
          'Leidy Andrade; José Daniel Jojoa; Gonzalo Hernández; Diego Benavides',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'ANALISIS DESCRIPTIVO Y PREDICTIVO DE BRECHAS DE GENERO EN LAS PRUEBAS SABER',
          '5:10 PM',
          'Alisson Catalina Celeita Gutierrez; Angie Paola Manrique Ravelo; Corin Jazmin Viracacha Viracacha; Cesar Yesid Barahona Rodríguez',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
        new MyTile(
          'MSSOLANUM - MODELO SISTEMATIZADO PARA LA PLANIFICACION DEL CULTIVO DE PAPA EN NARIÑO',
          '5:30 PM',
          'Martha Carrillo Obando',
          'Universidad Mariana',
          'Auditorio Madre Caridad',
          1.223875,
          -77.283344,
        ),
      ]
  ),

  new MyTile(
    'Ingeniería de Software','','','', '', 0,0,
    <MyTile>[
      new MyTile(
        'CASANDRA “APP PARA EL LEVANTAMIENTO DE INFORMACIÓN SOBRE ESTRUCTURAS EXPUESTAS A AMENAZAS DE TIPO VOLCÁNICO',
        '2:00 PM',
        'German Jurado; Gustavo Guerrero; Gonzalo Hernández',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'SOFTWARE PARA EL CONTROL DE PLANES DE MEJORAMIENTO UTILIZANDO METODOLOGÍAS AGILES',
        '2:20 PM',
        'Cristhian Rodríguez Galindo; Yohan Roldan Moreno; Francisco Lanza Rodríguez',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'EVALUACIÓN DE USABILIDAD APLICADO A PORTALES WEB PARA LA IMPLEMENTACIÓN DE LA ESTRATEGIA DE GOBIERNO EN',
        '2:40 PM',
        'Francisco Nicolas Javier Solarte Solarte; Jesús Germán Cortés Camacho',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'DISEÑO DE UN VIDEO JUEGO EDUCATIVO, A TRAVÉS DE LA ADAPTACIÓN DE LA METODOLOGÍA ÁGIL XP.',
        '3:00 PM',
        'Jorge Collazos',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'MODULO INFORMÁTICO PARA EL APOYO AL PROCESO DE REGISTROS CALIFICADOS',
        '3:20 PM',
        'Anggy Jirley Arguello Patarroyo; Cristian Alejandro Estevéz Acevedo; Cesar Yesid Barahona Rodríguez',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'UNA APROXIMACIÓN A LAS TÁCTICAS ARQUITECTÓNICAS DE SEGURIDAD PARA E-VOTING',
        '3:40 PM',
        'Francisco Zambrano; Daniel Burbano; Giovanni Hernández; Franklin Jiménez',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'RECESO',
        '4:00 PM\n4:30 PM',
        '','', '',0,0,
      ),
      new MyTile(
        'FLEXIBILIDAD EN LA GESTIÓN Y ADMINISTRACIÓN DE SERVICIOS A TRAVÉS DE UNA API GRAPHQL',
        '4:30 PM',
        'John Mario Getial Bolaños; David Alexander Cerón; Andrés Felipe Burbano;Franklin Eduardo Jimenez Giraldo',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'SISTEMA INFORMÁTICO COMO APOYO A LA DIRECCIÓN DE PROYECTOS DE DESARROLLO DE SOFTWARE INTEGRANDO CMMI-DEV, PMBOK Y SCRUM',
        '4:50 PM',
        'Gabriel Guzman; Juan Pardo Moreno; Francisco Lanza Rodriguez; Gina Valenzuela Sabogal',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'ANÁLISIS DE RENDIMIENTO EN EXTRACCIÓN DEL CÓDIGO DE CADENA VCC REALIZADO EN EL LENGUAJE DE PROGRAMACIÓN JAVA.',
        '5:10 PM',
        'Jorge Andres Duran Perez; Carlos Alfonso Pinilla Garzón',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
      new MyTile(
        'PROCESAMIENTO DE RDF STREAM SOBRE APACHE FLINK',
        '5:30 PM',
        'Esteban Danilo Diaz Riascos; Oscar Orlando Ceballos Argote; Andrés Mauricio Castillo Robles; Gonzalo José Hernández Garzón',
        'Universidad Mariana',
        'Auditorio San José',
        1.223875,
        -77.283344,
      ),
    ]
  ),
  new MyTile(
      'Educación en Ingeniería de Sistemas', '', '','', '',0,0,
      <MyTile>[
        MyTile(
          'EL SOFTWARE COMO HERRAMIENTA DIDÁCTICA EN LAS CIENCIAS BÁSICAS DE EDUCACIÓN SUPERIOR',
          '2:00 PM',
          'Hector Alirio Guerrero; Ricardo Javier Hernández Revelo',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'ENSEÑANDO PROGRAMACIÓN LINEAL UTILIZANDO HOJAS DE CÁLCULO CON ENFOQUE GEOMÉTRICO PARA INGENIERÍA',
          '2:20 PM',
          'José Fabio Davila Escobar',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'SISTEMA DE ALERTA TEMPRANA DE POTENCIAL REPITENCIA Y DESERCIÓN ESTUDIANTIL',
          '2:40 PM',
          'Omar Antonio Vega; Yesid Alejandro Maya Játiva; Javier Alejandro Jiménez Toledo',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'UNA MIRADA A LA CARA OCULTA DE LAS TIC',
          '3:00 PM',
          'Omar Antonio Vega',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'UNA PRÁCTICA PEDAGÓGICA Y DE ENSEÑANZA DE EMPRENDIMIENTO CON EL MÉTODO COCOMO EN INGENIERÍA DE SISTEMAS DE LA UNIVERSIDAD CESMAG',
          '3:20 PM',
          'Liliana Ayala Guatusmal; Omar Revelo Zambrano',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'DERECHOS BÁSICOS DE APRENDIZAJE PARA EL ÁREA DE TECNOLOGÍA E INFORMÁTICA',
          '3:40 PM',
          'Cristian Yovao Dorado Ceballos; Ricardo Timarán Pereira',
          'Universidad Mariana',
          'Jesùs de Nazareth',
          1.223875,
          -77.283344,
        ),
        MyTile(
          'RECESO',
          '4:00 PM\n4:30 PM',
          '','', '', 0,0,
        ),
        MyTile(
          'LA SESIÓN DE EDUCACIÓN EN INGENIERIA DE SISTEMAS TERMINA A LAS 4:00 PM PARA DAR PASO A LA LINEA DE IOT EN LA SEGUNDA SESIÓN',
          '',
          '','', '',0,0,
        ),
      ]
  ),
  new MyTile(
    'IOT e Informatica y Telecomunicaciones', '', '', '', '', 0, 0,
    <MyTile>[
      MyTile(
        'SISTEMA IOT DE SEGURIDAD DE BAJO COSTO PARA EL ACCESO A VIVIENDAS',
        '4:30 PM',
        'Juan José Eraso Cabrera; Santiago Andrés Timana Guerrero; Jefferson Gabriel Cortes',
        'Universidad Mariana',
        'Jesùs de Nazareth',
        1.223875,
        -77.283344,
      ),
      MyTile(
        'MONITOR IOT DE CRECIMIENTO Y AMBIENTE PARA POLLOS',
        '4:50 PM',
        'Javier Andrés Rosas Villamarin; Diana Giselle Armero Molina',
        'Universidad Mariana',
        'Jesùs de Nazareth',
        1.223875,
        -77.283344,
      ),
      MyTile(
        'SISTEMA IOT DE LOCALIZACION PARA MENORES DE EDAD EN LAS DIFERENTES GUARDERIAS',
        '5:10 PM',
        'Andrés Narváez, Diego Pianda',
        'Universidad Mariana',
        'Jesùs de Nazareth',
        1.223875,
        -77.283344,
      ),
      MyTile(
        'SISTEMA DE BLOQUEO Y LOCALIZACIÓN DE MOTOS BASADO EN HERRAMIENTAS IOT DE BAJO COSTO.',
        '5:30 PM',
        'Juan Felipe Morales Narvaez; Andrés Felipe Quiñones Mesias; Juan Sebastián Rodriguez Mora',
        'Universidad Mariana',
        'Jesùs de Nazareth',
        1.223875,
        -77.283344,
      ),
    ]
  )
];

List<MyTile> listProgramacionCesmag = <MyTile>[
  MyTile(
    'Talleres','','', '', '', 0, 0,
    <MyTile>[
      MyTile('Sesión 1','','', '', '', 0, 0,),
      MyTile(
        'Hacking Web',
        '8:30 AM\n10:00 AM',
        'Mauricio Chaves\nCupos: 40',
        'Universidad Cesmag',
        'Aula 1, Cuarto Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        '¿Cómo nos mienten las gráficas?',
        '8:30 AM\n10:00 AM',
        'Alvaro Martinez\nCupos: 35',
        'Universidad Cesmag',
        'Aula 7, – Tercer Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'RECESO',
        '10:00 AM\n10:30 AM',
        '','', '',0,0,
      ),
      MyTile('Sesión 2','','', '', '', 0, 0,),
      MyTile(
        'Hacking Web',
        '10:30 AM\n12:30 AM',
        'Mauricio Chaves\nCupos: 40',
        'Universidad Cesmag',
        'Aula 1, Cuarto Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
      MyTile(
        '¿Cómo nos mienten las gráficas?',
        '10:30 AM\n12:30 AM',
        'Alvaro Martinez\nCupos: 35',
        'Universidad Cesmag',
        'Aula7, – Tercer Piso Edificio San Francisco',
        1.208740,
        -77.278022,
      ),
    ],
  ),
  MyTile(
    'Gestión del Conocimiento','','', '', '', 0, 0,
    <MyTile>[
      MyTile(
        'UNA PROPUESTA BASADA EN ARQUITECTURA EMPRESARIAL PARA EL PROCESO DE ANÁLISIS FINANCIERO DE LAS PEQUEÑAS EMPRESAS COMERCIALES DE SAN JUAN DE PASTO',
        '8:00 AM',
        'Daniel Enríquez; Christian Rivera; Carlos López; Carlos López',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'AUTOMATIZACION DE UN SISTEMA ACUAPANICO PARA LA PRODUCCION AUTOSOSTENIBLE DE ESPECIES VEGETALES Y ANIMALES',
        '8:20 AM',
        'Jaime Eduardo Andrade Ramirez; Luz Dary Pedraza Hernández',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'COBIT COMO MARCO DE BUENAS PRÁCTICAS DE TI EN EL SECTOR DE LA SALUD PUBLICA EN PASTO - COLOMBIA',
        '8:40 AM',
        'Magda Salazar Suarez',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'BASES DE DATOS NOSQL: UN COMPARATIVO DESDE LO DOCUMENTAL HACIA LO EXPERIMENTAL',
        '9:00 AM',
        'Álvaro Martínez Navarro; Giovanni Hernández; Franklin Jiménez; Robinson Jiménez',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'ANÁLISIS Y GESTIÓN DE VULNERABILIDADES DE LAS APLICACIONES WEB',
        '9:20 AM',
        'Anivar Chaves Torres',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'SISTEMA PARA LA UBICACIÓN DE SECTORES DE CONCENTRACIÓN DE ACCIDENTES EN CARRETERAS',
        '9:40 AM',
        'Jhojan Córdoba Ordoñez\n\nNicolás Ibarra Portilla',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'RECESO',
        '10:00 AM\n10:30 AM',
        '','', '',0,0,
      ),
      MyTile(
        'COMPARACIONES TÉCNICAS Y ECONÓMICAS DEL USO DE CONTROLADORES MPC Y PID APLICADOS A UNA MÁQUINA EXTRUSORA DE POLIESTIRENO EN ICOTALLA S.A.S.',
        '10:30 AM',
        'Javier Suarez Jaramillo; Mateo Córdoba; John Barco Jiménez; Camilo Lagos Mora',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'APLICACIÓN MÓVIL ENCAMINADA AL FORTALECIMIENTO DE LA CULTURA VIAL, A PERSONAS ENTRE EDADES DE 18 A 30 AÑOS DE LA CIUDAD DE SAN JUAN DE PASTO',
        '10:50 PM',
        'Edwin Giovanni Insuasti Portilla; Jhon Fredy Montenegro Rosero',
        'Universidad Cesmag',
        'Salón B317 Sede B',
        1.208740,
        -77.278022,
      ),
    ]
  ),
  MyTile(
    'Ingeniería de Software', '', '', '', '', 0, 0,
    <MyTile>[
      MyTile(
        'NIVEL DE ALFABETIZACIÓN EN ARQUITECTURA EMPRESARIAL: CASO EMPRESAS DE PASTO',
        '8:00 AM',
        'Álvaro Martínez Navarro; Giovanni Hernández; Franklin Jiménez; Robinson Jiménez',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'MOCKUPS EN LA ESPECIFICACIÓN DE REQUERIMIENTOS FUNCIONALES',
        '8:20 AM',
        'Andrés Arteaga; Juan Pablo Dulce; Manolo Pabón',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'PRÁCTICAS DE FLEXIBILIDAD PARA EQUIPOS QUE DESARROLLAN SOFTWARE',
        '8:40 AM',
        'Víctor Castro; Giovanni Hernández; Robinson Jiménez; Álvaro Martínez',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'TURISMO EN REALIDAD MIXTA: CIUDAD SORPRESA VIRTUAL',
        '9:00 AM',
        'Álvaro Santiago Salas Bolaños; Franklin Eduardo Jiménez Giraldo; Jhonatan Javier Lasso Rios; Álvaro Alexander Martínez Navarro',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'CLINISOFT: “SOFTWARE ESPECIALIZADO EN LA GESTIÓN DE HISTORIAS CLÍNICAS PARA LOS SERVICIOS DEL INSTITUTO "INEFCO"',
        '9:20 AM',
        'Andrés Felipe Moreno Dorado; Franklin Eduardo Jiménez Giraldo; Robinson Andrés Jiménez Toledo',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'COMPARATIVAS DE HERRAMIENTAS DE SEGURIDAD INFORMÁTICA EN EL PERITAJE FORENSE.',
        '9:40 AM',
        'Enmanuel Ochoa Cedeño; Edgar Dulce Villareal',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'RECESO',
        '10:00 AM\n10:30 AM',
        '','', '',0,0,
      ),
    ]
  ),
  MyTile(
    'Educación en Ingeniería de Sistemas','','', '', '', 0, 0,
    <MyTile>[
      MyTile(
        'INGENIERAS DE SISTEMAS EN LA UNIVERSIDAD DE NARIÑO (1965 -2015): LA FUGA DE BYTES',
        '8:00 AM',
        'Alejandra Zuleta',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'ABP EN INGENIERÍA DE SISTEMAS: UNA REVISIÓN DE LITERATURA DE ÁMBITO INTERNACIONAL',
        '8:20 AM',
        'Nancy Legarda; Alvaro Martínez-Navarro; Giovanni Hernández',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'PERCEPCIONES DEL GÉNERO FEMENINO RELACIONADAS CON LOS ESTUDIOS DE FORMACIÓN PROFESIONAL EN INGENIERÍA DE SISTEMAS EN EL DEPARTAMENTO DE NARIÑO. CASO: ESTUDIANTES GÉNERO FEMENINO GRADO ONCE.',
        '8:40 AM',
        'Jhonatan Canacuan; Linda Gongora; Vanessa Paz; Robinson Jiménez',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'UN ESQUEMA PARA LA GESTIÓN DEL LABORATORIO DE INGENIERÍA EMPRESARIAL EN LA UNIVERSIDAD EAFIT',
        '9:00 AM',
        'Dario Alejandro Mera Araujo',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'CARACTERIZACIÓN DE FÁBRICAS DE APRENDIZAJE EN LA EDUCACIÓN SUPERIOR: UN PRIMER PASO HACIA UNA FÁBRICA DE APRENDIZAJE EN INGENIERÍA DE SOFTWARE',
        '9:20 AM',
        'Camilo Burbano; Tatiana Delgado; Marisol Tabla; Giovanni Hernández',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'DESIGN THINKING, UNA ALTERNATIVA PARA EL DESARROLLO DE COMPETENCIAS DOCENTES CREATIVAS EN LA EDUCACIÓN SUPERIOR',
        '9:40 AM',
        'Diana Cabrera; Diana Guerrero; Giovanni Hernández',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'RECESO',
        '10:00 AM\n10:30 AM',
        '', '', '', 0, 0,
      ),
      MyTile(
        'PROYECTO DE INTERVENCIÓN PARA LA ATENCIÓN AL ALTO TIEMPO DE DURACIÓN PREVISTO PARA EL DESARROLLO DE UNA CARRERA PROFESIONAL DE INGENIERÍA DE SISTEMAS EN COLOMBIA, DESDE LA GESTIÓN EDUCATIVA ESTRATÉGICA',
        '10:30 AM',
        'Luis Obeymar Estrada Sapuyes',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'MODELO DE COMPETENCIAS DOCENTES DEL INGENIERO EN SU PAPEL DE FORMADOR DE NUEVOS INGENIEROS PARA UNA EDUCACIÓN DE CALIDAD EN EL SIGLO XXI.',
        '10:50 AM',
        'Fabio Andrés Bolaños Alomia; Ricardo Timarán Pereira',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'ENSEÑANZA POR DESCUBRIMIENTO APOYADA EN LAS TIC PARA FORTALECER LA MOTIVACIÓN ACADÉMICA EN LAS CIENCIAS NATURALES DE LOS ESTUDIANTES EN EL GRADO 9.2 DE LA INSTITUCIÓN EDUCATIVA MUNICIPAL CENTRO DE INTEGRACIÓN POPULAR PASTO',
        '11:10 AM',
        'Juliana García Rodriguez; Ana Laguna Tarapuez; Marcela Mora Insuasty; Alexandra Luna Acosta',
        'Universidad Cesmag',
        'Salón B327 Sede B',
        1.208740,
        -77.278022,
      ),
    ]
  ),
  MyTile(
    'IOT e Informatica y Telecomunicaciones','','', '', '', 0, 0,
    <MyTile>[
      MyTile(
        'Las ponencias pertenecientes a esta categoría inician en la segunda sesión del día, después del receso.',
        '',
        '', '', '', 0, 0,
      ),
      MyTile(
        'TIC AL SERVICIO DEL SECTOR RURAL',
        '10:30 AM',
        'Omar Antonio Vega',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'CARACTERIZACION DE UN CANAL DE COMUNICACIONES PARA SISTEMAS DWDM A 40 GBPS EN SISTEMAS DE FIBRA ÓPTICA CON DETECCIÓN COHERENTE',
        '10:50 AM',
        'Manuel Ernesto Bolaños González; Edgar Rodrigo Enríquez Rosero; Francisco Nicolas Solarte Solarte',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'DISEÑO DE ARREGLO DE ANTENAS PARA UN LECTOR RFID EN LA BANDA DE 900 MHZ',
        '11:10 AM',
        'Mario Fernando Henao Rosero; David Sebastián Gómez Eraso; Edison Romero Eraso',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
      MyTile(
        'APLICATIVO MOVIL INTERPRETE DE LENGUA DE SEÑAS COLOMBIANA ',
        '11:30 AM',
        'Ricardo Andrés Pantoja Moriano; Carlos Alberto Paredes Suarez; Manuel Ernesto Bolaños González',
        'Universidad Cesmag',
        'Salón B318 Sede B',
        1.208740,
        -77.278022,
      ),
    ]
  ),
];

 */