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
      "name": "Conferencias",
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index){
          return Padding(
              padding: const EdgeInsets.all(3.0),
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
  Color mainColor = const Color(0xff3C3261);

  Single_item({this.item_name, this.item_icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: FlatButton(
        onPressed: (){
          ItemAction(item_name, context);
        },
        child:Container(
          margin: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Container(
                  margin: const EdgeInsets.fromLTRB(0,1.0,0,1.0),
                  child: new Container(
                    height: 70.0,
                    width: 70.0,
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.white,
                    image: new DecorationImage(
                        image: AssetImage(item_icon),
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
              new Text(item_name,
                maxLines: 2,
                style: new TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontFamily: 'Arvo',
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void ItemAction(String item, context){
  switch (item) {
    case "Conferencias":
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

