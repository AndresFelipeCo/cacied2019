import 'package:cacied/pages/lugares.dart';
import 'package:cacied/pages/programacion.dart';
import 'package:cacied/pages/tematicas.dart';
import 'package:flutter/material.dart';
import 'package:cacied/pages/listMenu.dart';

class Items extends StatefulWidget{
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items>{
  var item_list = [
    {
      "name": "Ponencias",
      "picture": "images/002-trazar.png",
    },
    {
      "name": "Conferencistas",
      "picture": "images/001-equipo.png",
    },
    {
      "name": "Lugares",
      "picture": "images/003-rural.png",
    },
    {
      "name": "Programación",
      "picture": "images/005-calendario.png",
    },
    {
      "name": "Temáticas",
      "picture": "images/006-replica.png",
    },
    {
      "name": "Sitios turísticos",
      "picture": "images/004-valle.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: item_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Single_item(
                item_name: item_list[index]['name'],
                item_icon: item_list[index]['picture'],
              )
          );
        }
    );
  }
}

class Single_item extends StatelessWidget{
  final item_name;
  final item_icon;

  Single_item({this.item_name, this.item_icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius:
                10.0, // has the effect of softening the shadow
              )
            ],
          ),
          child: Material(
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              onTap: () {ItemAction('$item_name', context);},
              child: GridTile(
                  footer: Container(
                      color: Colors.black26,
                      child: ListTile(
                        title: Text(
                          "$item_name",
                          style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  child: Image.asset(
                    item_icon,
                    fit: BoxFit.cover,
                  )),
            ),
          )
      ),
    );
  }
}

void ItemAction(String item, context){
  switch (item) {
    case "Ponencias":
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) {
            return ListMenu(title: item);
          }
          )
      );
      break;
    case "Conferencistas":
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) {
            return ListMenu(title: item);
          }
          )
      );
      break;
    case "Lugares":
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) {
            return Lugares(
                title: item
            );
          }
          )
      );
      break;
    case "Programación":
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context){
                return Programacion(title: item,);
              }
          )
      );
      break;
    case "Temáticas":
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) {
            return Tematicas(
                title: item
            );
          }
          )
      );
      break;
    case "Sitios turísticos":
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) {
            return Lugares(
                title: item
            );
          }
          )
      );
      break;
  }
}

