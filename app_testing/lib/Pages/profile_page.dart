import 'package:app_testing/Styles/app_text.dart';
import 'package:app_testing/components/toolbar.dart';
import 'package:app_testing/components/user_avatar.dart';
import 'package:app_testing/model/user.dart';
import 'package:flutter/material.dart';

enum ProfileMenu{
  edit,
  logout
}
class ProfilePage extends StatelessWidget{
  final User user;
  const ProfilePage({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
         actions:[
          PopupMenuButton<ProfileMenu>(
            onSelected: (value){
              switch(value){
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed("/edit_profile");
                  break;
                
                case ProfileMenu.logout:
                  print("Log out");
                  break;
                
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder:(context) {
            return [
              PopupMenuItem(
                child: Text("Edit"),
                value: ProfileMenu.edit,
                // Row(
                //   children: [
                //     Text("Edit"),
                //     Icon(Icons.edit),
                //   ],
                // )
                ),
              PopupMenuItem(
                child: Text("log out"),
                value: ProfileMenu.logout,
                )
            ];
          }
          ),
         ]
         ),
      body: Column(
        children: [
         UserAvatar(size: 90),
        SizedBox(height: 12,),
        Text('${user.name}',style: AppText.header2,),
        SizedBox(height: 5,),
        Text("${user.name}",style: AppText.subtitle1),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("456", style: AppText.subtitle2),
                Text("Followers")
              ],
            ),
            Column(
              children: [
                Text("119", style: AppText.subtitle2),
                Text("Post")
              ],
            ),
            Column(
              children: [
                Text("860", style: AppText.subtitle2),
                Text("Following")
              ],
            )
          ],
        ),
        Divider(thickness: 2,height: 20,)
        ],
      ),
    );
    
  }
}