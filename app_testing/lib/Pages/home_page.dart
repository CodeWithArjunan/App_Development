import 'package:app_testing/Styles/app_text.dart';
import 'package:app_testing/components/post_item.dart';
import 'package:app_testing/components/toolbar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users=[];
  @override
  Widget build(BuildContext context) {
    mack();   //call the function before if we use the item in inner body/return 
    return Scaffold(
      appBar: Toolbar(
        title: "5mintest",
         actions:[
          IconButton(onPressed: (){
             Navigator.of(context).pushNamed("/location");
          },
           icon: Icon(Icons.location_on_outlined))
         ] 
         ),
      body:ListView.separated(
        itemBuilder: (context,index){
        return PostItem(
          user: users[index]
          );
      },itemCount: users.length,
      separatorBuilder: (BuildContext context,int index){
          return SizedBox(height: 24);
      },
      )
    );
  }
mack(){
  for(var i=0;i<100;i++){
    users.add("User name is $i");
  }
}
macktt(){
  for(var i=0;i<100;i++){
    users.add("User$i");
  }
}
}




