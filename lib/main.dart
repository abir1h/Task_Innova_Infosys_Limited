import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/HomePage/HomeView.dart';
import 'Screens/HomePage/MainHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.teal,
          fontFamily: 'Inter'
      ),
      home:Main_home(indexof: 0,),
      // home:SplashScreen(),
    );
  }
}



