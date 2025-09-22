import 'package:app_testing/Styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget{
  final String hint;
  const AppTextField({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return  TextField(
                      decoration: InputDecoration(                       
                        hintText: hint, //innerbox text
                        labelText: hint,  //inputupborder text
                        labelStyle: TextStyle(
                          color: Colors.white
                          ), //style lable
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        focusedBorder:  const UnderlineInputBorder(   //focused on OR when it click
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Colors.transparent)
                        ),
                        filled: true,
                        fillColor: AppColors.fildcolor,
                      ),
                    );
  }
}