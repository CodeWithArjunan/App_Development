import 'package:app_testing/Styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key , required this.user});
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
                children: [
                   SizedBox(width: 5,),
                  Image.asset(
                    "assets/temp/user1.jpg",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 5,),
                  Text(user ,style: AppText.subtitle1,)
                ],
            ),
            SizedBox(height: 12),
            Image.asset("assets/temp/user1.jpg"),
              SizedBox(height: 16),
            Text("The post is post by user and add the faverate memory in social network to see the world ,")
        ],
      ),
    );
  }
  

}