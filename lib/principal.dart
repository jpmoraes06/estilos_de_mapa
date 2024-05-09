import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget{
  const Principal({Key? key}): super(key: key);

  @override
  _PrincipalState createState()=> _PrincipalState();
}

class _PrincipalState extends State<Principal>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pirata MAPS'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
      ),
      body: Stack(
        children: [
          FlutterMap(
              options: MapOptions(center: LatLng(30.2245, -100.5543), zoom:2),
              children:[
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/pioneer/{z}/{x}/{y}.png?apikey=4aa8204ac81e4209842f54c177b0420f',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers:[
                      Marker(
                          width: 80.0,
                          height:80.0,
                          point: LatLng(30.2245, -100.5543),
                          builder:(ctx)=> Container(
                            child: Icon(Icons.location_on, color: Colors.black),
                          )
                      )
                    ]
                )
              ]
          )
        ],
      ),
    );
  }
}