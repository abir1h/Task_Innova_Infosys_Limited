import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_inova/Screens/ChartsPage/ChartView.dart';
import 'package:task_inova/Screens/LampPage/LampView.dart';

import '../../Utils/Colors.dart';
import '../SmartPage/SmartView.dart';
import 'HomeView.dart';


class Main_home extends StatefulWidget {
  final int indexof;
Main_home({required this.indexof});
@override
_Main_homeState createState() => _Main_homeState();
}

class _Main_homeState extends State<Main_home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Lampview(),
    ChartView(),
    SmartView(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int currentIndex = 0;

  int current_screen = 1;
  @override
  void initState() {
    _selectedIndex=widget.indexof;
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm Exit"),
                content: Text("Are you sure you want to exit?"),
                actions: <Widget>[
                  TextButton(
                    child: Text("YES"),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                  TextButton(
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOptions.elementAt(currentIndex),
        ),

        bottomNavigationBar: BottomAppBar(

          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 13,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30) )
            ),
            child:ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              child: BottomNavyBar(
                backgroundColor:AppColors.mainColor,

                selectedIndex: currentIndex,
                onItemSelected: (index){
                  setState(() {
                    currentIndex = index;
                  });
                }, showElevation: true,
                itemCornerRadius: 30,
                curve: Curves.easeIn,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  BottomNavyBarItem( activeColor:Colors.white,
                    inactiveColor: Colors.white,
                    icon: Icon(Icons.ad_units_sharp),
                    title: Text('Lamp'),
                  ),
                  BottomNavyBarItem( activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    icon: Icon(Icons.pie_chart),
                    title: Text('Usage'),
                  ),  BottomNavyBarItem( activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    icon: Icon(Icons.person),
                    title: Text('Smart Mode'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
