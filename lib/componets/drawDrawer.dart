import 'package:cacied/pages/home.dart';
import 'package:flutter/material.dart';

import 'items.dart';

class DrawDrawer extends StatelessWidget{
  final String title;
  DrawDrawer({Key key, @required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('CACIED 2019'),
          accountEmail: Text('cacied2019@udenar.edu.co'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/logo.png'),
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.blueGrey,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pop(context, HomePage());
          },
          child: ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
          ),
        ),

        InkWell(
          onTap: (){
            if (title!='Ponencias'){
              ItemAction('Ponencias', context);
            }
          },
          child: ListTile(
            title: Text('Ponencias'),
            leading: Icon(Icons.present_to_all),
          ),
        ),

        InkWell(
          onTap: (){
            if (title!='Conferencistas'){
              ItemAction('Conferencistas', context);
            }
          },
          child: ListTile(
            title: Text('Conferencistas'),
            leading: Icon(Icons.people),
          ),
        ),

        InkWell(
          onTap: (){
            if (title!='Lugares'){
              ItemAction('Lugares', context);
            }
          },
          child: ListTile(
            title: Text('Lugares'),
            leading: Icon(Icons.location_city),
          ),
        ),

        InkWell(
          onTap: (){
            if (title!='Programación'){
              ItemAction('Programación', context);
            }
          },
          child: ListTile(
            title: Text('Programación'),
            leading: Icon(Icons.event),
          ),
        ),
        InkWell(
          onTap: (){
            if (title!='Temáticas'){
              ItemAction('Temáticas', context);
            }
          },
          child: ListTile(
            title: Text('Temáticas'),
            leading: Icon(Icons.local_library),
          ),
        ),
        InkWell(
          onTap: (){
            if (title!='Sitios turísticos'){
              ItemAction('Sitios turísticos', context);
            }
          },
          child: ListTile(
            title: Text('Sitios turísticos'),
            leading: Icon(Icons.terrain),
          ),
        ),
        Divider(),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Salir'),
            leading: Icon(Icons.transit_enterexit),
          ),
        ),
      ],
    );
  }
}