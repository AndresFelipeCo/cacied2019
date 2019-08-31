import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Maps extends StatefulWidget{
  final String title;
  final double lat ;//= 1.2323;
  final double lng ;//= -77.2930;
  Maps({Key key, @required this.title, @required this.lat, @required this.lng});
  @override
  _MapsState createState() => new _MapsState();
}
class _MapsState extends State<Maps>{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new FlutterMap(
          options: MapOptions(
            center: LatLng(widget.lat, widget.lng),
            minZoom: 10.0,
          ),
          layers:[
            new TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a','b','c'],
            ),
            new MarkerLayerOptions(
                markers: [
                  new Marker(
                      width: 45.0,
                      height: 45.0,
                      point: LatLng(widget.lat, widget.lng),
                      builder: (context)=> new Container(
                        child: IconButton(
                            icon: Icon(Icons.location_on),
                            color: Colors.deepPurpleAccent,
                            iconSize: 45.0,
                            tooltip: (widget.title),
                            onPressed: (){
                              print(widget.title);
                            }
                        ),
                      )
                  )
                ]
            )
          ]
      ),
    );
  }
}