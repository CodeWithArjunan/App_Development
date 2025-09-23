import 'package:app_testing/Styles/app_colors.dart';
import 'package:app_testing/Styles/app_text.dart';
import 'package:app_testing/components/app_text_field.dart';
import 'package:app_testing/components/toolbar.dart';
import 'package:app_testing/components/user_avatar.dart';
import 'package:flutter/material.dart';

enum Genter{
  none,
  male,
  female,
  othors
}
class EditProfilePage extends StatefulWidget {
   EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
   var genter=Genter.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "EditPage",
         actions: [
          Icon(Icons.save)
          ]
          ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserAvatar(size: 200),
              ),
              Positioned(
                bottom: 25,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Icon(Icons.edit,
                  size: 30,
                  color: Colors.black,),
                ),
              ),
            ],
          ),


          SizedBox(height: 24),
          AppTextField(hint: "First name"),
          SizedBox(height: 24),
          AppTextField(hint: "last name"),
          SizedBox(height: 24),
          AppTextField(hint: "Phone number"),
          SizedBox(height: 24),
          AppTextField(hint: "Location"),

          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(left: 12,right: 12,top: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.fildcolor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text(
                  "Genter",
                  style: AppText.body1.copyWith(  // copyWith -> it's copy the original style with addtionaly we can add aby other style
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(   //Radio(value: value, groupValue: groupValue, onChanged: (){}) 
                        title: Text("Male"),
                        visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity
                        ),
                        contentPadding: EdgeInsets.zero,
                        value: Genter.male,
                       groupValue: genter, 
                       onChanged: (value){
                          setState(() {
                            genter=Genter.male;
                          });                
                       }),
                    ),
                     Expanded(
                       child: RadioListTile(
                        title: Text("Female"),
                        visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity
                        ),
                        value: Genter.female,
                        contentPadding: EdgeInsets.zero,
                       groupValue: genter, 
                       onChanged: (value){
                          setState(() {
                            genter=Genter.female;
                          });                
                       }),
                     ),
                     Expanded(
                       child: RadioListTile(
                        title: Text("Others"),
                        visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity
                        ),
                        value: Genter.othors,
                        contentPadding: EdgeInsets.zero,
                       groupValue: genter, 
                       onChanged: (value){
                          setState(() {
                            genter=Genter.othors;
                          });                
                       }),
                     )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          SizedBox(
                width: 220,
                child: ElevatedButton(
                 onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/profile');  //().pushNAme('/home')
                      print("Save is clicked");
                },
                style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.black,
                 backgroundColor: Colors.amber
                    ),
                        child: Text('Save'),
                      ),
          ),
        ],
      ),
    );
  }
}
