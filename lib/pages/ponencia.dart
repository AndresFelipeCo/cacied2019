import 'package:flutter/material.dart';

class Ponencia extends StatelessWidget{
  final String name;
  final String group;
  final String site;
  final String day;
  final String hour;

  Color mainColor = const Color(0xff3C3261);

  Ponencia({Key key, @required this.name, @required this.group, @required this.site, @required this.day, @required this.hour});
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
                    title: Text(group,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      "images/afiche.png",
                      fit: BoxFit.cover,
                    )
                ),
              )
            ];
          },
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name.toString(),
                  style: new TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Arvo',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                child: new Column(children: [
                  new Text(day.toString()+' '+hour.toString(),
                    style: new TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Arvo',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                  crossAxisAlignment: CrossAxisAlignment.start,),
              ),
              Container(
                width: 300.0,
                height: 0.5,
                color: const Color(0xD2D2E1ff),
                margin: const EdgeInsets.all(5.0),
              ),
              FlatButton(
                onPressed: (){},
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Container(
                        margin: const EdgeInsets.all(16.0),
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
                    new Expanded(
                        child: new Container(
                          margin: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
                          child: new Column(children: [
                            new Text(site.toString(),
                              style: new TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Arvo',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],                            crossAxisAlignment: CrossAxisAlignment.start,),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                width: 300.0,
                height: 0.5,
                color: const Color(0xD2D2E1ff),
                margin: const EdgeInsets.all(5.0),
              ),
            ],
          )
      ),
    );
  }
}