import 'package:app_testing/components/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Location", actions: [
        Icon(Icons.save)
      ],),
      body: FlutterMap(
        options: MapOptions(
         center:LatLng(51.509364,-0.128928),
          zoom: 10
        ),
      children: [
        TileLayer(urlTemplate:  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.ces.flutter',
        ),
        MarkerLayer(
          markers: [
            Marker(
              width: 100,
              point: LatLng(51.509364,-0.128928),
              builder:(context){
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Text("Username",
                      style: TextStyle(color: Colors.amber),),
                    ),
                    Icon(Icons.location_city_outlined),
                  ],
                );
            },
            )
            
        ])
      ],
      )
    );
    
  }
}