import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
              "assets/temp/user1.jpg",
                width: size,
               height: size,
                    ),
          );
    
  }
}