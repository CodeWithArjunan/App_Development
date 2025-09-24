import 'package:app_testing/components/app_text_field.dart';
import 'package:app_testing/components/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class NearbyPage extends StatefulWidget {

  const NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  Menus currentIndex = Menus.you;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
        appBar: Toolbar(
          title: "Location",
           actions: [
            Icon(
              Icons.save,
             color: Colors.white,
             size: 30)
             ]),
         body:  pages[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
       currentIndex: currentIndex.index,
        ontap: (value){
         setState(() {
           currentIndex=value;
        });
       },
       ),  
          );
  
  }
}

    

class LocationPage extends StatefulWidget{
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(12.9675, 79.9416),
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9675, 79.9416),
                  width: 80,
                  height: 80,
                  //builder: (ctx) => Icon(Icons.location_pin, color: Colors.red, size: 40),
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      //color: Colors.red,
                    ),
                    child: Icon(Icons.location_pin, color: Colors.red, size: 40),
                    ),
                ),
              ],
            ),
          ],
        ),   
          );
  }
}

  final pages=[
    ExplorePage(),
    LocationPage(),
     ContributePage()
  ];


enum Menus{
  explore,
  you,
  contribute
}

class MyBottomNavigation extends StatelessWidget{
  final int currentIndex;
  final ValueChanged<Menus> ontap;
  const MyBottomNavigation(
    {
    super.key,
     required this.currentIndex,
      required this.ontap}
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Row(
                children: [
                  Expanded(   //this Expanded is used to split the space equally 1/5
                    child: IconButton(onPressed: ()=>ontap(Menus.explore),
                     icon: Icon(Icons.explore)
                    ),
                  ),
                   Expanded(  //2/5
                    child: IconButton(onPressed:  ()=>ontap(Menus.you),
                     icon: Icon(Icons.save_alt_outlined)
                    ),
                  ), 
                  Expanded( //4/5
                    child: IconButton(onPressed:  ()=>ontap(Menus.contribute),
                     icon: Icon(Icons.add_circle_outline)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}

class ContributePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        AppTextField(hint: "city1"),
        SizedBox(height: 14),
        AppTextField(hint: "city2"),
        SizedBox(height: 14),
        AppTextField(hint: "city3"),
        SizedBox(height: 14),
        AppTextField(hint: "city4"),
        SizedBox(height: 14),
        AppTextField(hint: "city5"),
        SizedBox(height: 14),
      ],
    );
    
  }
}


class ExplorePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        AppTextField(hint: "Enter Your location",),
        SizedBox(height: 14),
        AppTextField(hint: "Enter Your Distination"),
        SizedBox(height: 14),
        Container(
          child: Column(
            children: [
              Image.asset("assets/temp/map.jpg", width: MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height/2, )
            ],
          ),
        )
      ],
    );
    
  }
}