import 'package:app_testing/Styles/app_text.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  
  final List<Widget>? actions;
  const Toolbar({super.key , re, required this.title , required this.actions});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor:Colors.blue[900],
        title: Text(title , style: AppText.header1,),
        centerTitle: false,
        actions: actions,
      );
    
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(60);
}