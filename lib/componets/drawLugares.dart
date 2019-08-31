import 'package:cacied/pages/maps.dart';
import 'package:flutter/material.dart';

class DrawLugares extends StatelessWidget{
  final String name;
  final String description;
  final String image;
  final double lat;
  final double lng;

  Color mainColor = const Color(0xff3C3261);

  DrawLugares({Key key,@required this.name, @required this.description, @required this.image, @required this.lat, @required this.lng});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Expanded(
                child: new Container(
                  margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                  child: new Column(children: [

                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Container(
                        margin: const EdgeInsets.fromLTRB(0,16.0,0,16.0),
                        child: new Container(
                          height: 150.0,
                        ),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
                          color: Colors.white,
                          image: new DecorationImage(
                              image: AssetImage(image),
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
                    new Text(name.toString(),
                      style: new TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Arvo',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    new Padding(padding: const EdgeInsets.all(2.0)),
                    new Text(description,
                      maxLines: 30,
                      style: new TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Arvo'
                      ),
                    ),
                    Center(
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return Maps(
                                      title: name,
                                      lat: lat,
                                      lng: lng
                                  );
                                })
                            ) ;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: new Container(
                              margin: const EdgeInsets.all(5.0),
                              child: new Container(
                                width: 70.0,
                                height: 70.0,
                              ),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(50.0),
                                color: Colors.white,
                                image: new DecorationImage(
                                    image: AssetImage('images/007-global.png'),
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
                      )
                    )
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
    );
  }
}