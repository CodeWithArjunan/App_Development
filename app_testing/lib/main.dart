import 'package:app_testing/Pages/edit_profile_page.dart';
import 'package:app_testing/Pages/home_page.dart';
import 'package:app_testing/Pages/login_page.dart';
import 'package:app_testing/Pages/main_page.dart';
import 'package:app_testing/Pages/nearby_page.dart';
import 'package:app_testing/Pages/profile_page.dart';
import 'package:app_testing/Styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      //home: LoginPage(),
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor:AppColors.background,
        brightness: Brightness.dark
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home' :(context) => MainPage(),
         '/main':(context) => MainPage(),
         '/profile':(context)=> ProfilePage(),
         '/edit_profile':(context)=> EditProfilePage(),
         '/location' : (context)=> NearbyPage()
      },
    );
  }
}