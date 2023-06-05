import 'dart:convert';
import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task_inova/Screens/HomePage/HomeController.dart';
import 'package:task_inova/Utils/Colors.dart';



class HomeView extends GetView<HomeController> {

  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    var size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
         Stack(
           clipBehavior: Clip.none,
           children: [
             Image.asset(
               'Assets/Images/topbar.png',


             ),
             Positioned(
                 top: -100,left: -100,
                 child: Transform.rotate(angle: 260,child: Opacity(
                     opacity: .8,
                     child: Image.asset('Assets/Images/cloud1.png',height: 280,width: 280,)),)),
             Positioned(
                 top: -150,right: -100,
                 child: Transform.rotate(angle: 180,child: Opacity(
                     opacity: .8,

                     child: Image.asset('Assets/Images/cloud1.png',height: 280,width: 280,)),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                 children: [
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 26),),
                              Text("Kemberly Mastrangelo",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 18),),
                            ],
                          ),
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           radius: 25,
                           child: Icon(Icons.notifications,color: Colors.black87,size: 35,),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Container(
                       height: size.height/4.8,
                       width: size.width,
                       decoration: BoxDecoration(
                         color: AppColors.container_colors,
                         borderRadius: BorderRadius.circular(15)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Row(
                                   children: [
                                     Image.asset('Assets/Images/sun.png',height: 60,width: 60,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('May 5,2023 9.00 AM',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12)),
                                             Padding(
                                               padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                                               child: Text('Cloudy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                                             ),
                                           Text('Jakarta,Indonesia'),
                                         ],
                                     ),
                                      )
                                   ],
                                 ),SizedBox(width: 15,),
                                 Expanded(child: Column(
                                   children: [
                                     Text('19'+ " \u2103",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),

                                   ],
                                 )),

                               ],
                             ),
                             Divider(color: Colors.grey,),
                             Row(
                               children: [
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.all(5.0),
                                     child: Container(
                                       decoration:BoxDecoration(
                                         color: AppColors.container_colors2,
                                         borderRadius: BorderRadius.circular(15)

                             ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(2.0),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Row(
                                               children: [
                                                 CircleAvatar(
                                                   backgroundColor: Colors.white,
                                                   radius: 15,child: Image.asset("Assets/Images/drop.png",height: 20,width: 20,),
                                                 ),SizedBox(width: 10,),Text("97",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                 Text("%",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                               ],
                                             ),SizedBox(height: 5,),
                                             Text("Humidty")
                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.all(5.0),
                                     child: Container(
                                       decoration:BoxDecoration(
                                         color: AppColors.container_colors2,
                                         borderRadius: BorderRadius.circular(15)

                             ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(2.0),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Row(
                                               children: [
                                                 CircleAvatar(
                                                   backgroundColor: Colors.white,
                                                   radius: 15,child: Image.asset("Assets/Images/drop.png",height: 20,width: 20,),
                                                 ),SizedBox(width: 10,),Text("97",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                 Text("%",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                               ],
                                             ),SizedBox(height: 5,),
                                             Text("Humidty")
                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.all(5.0),
                                     child: Container(
                                       decoration:BoxDecoration(
                                         color: AppColors.container_colors2,
                                         borderRadius: BorderRadius.circular(15)

                             ),
                                       child: Padding(
                                         padding: const EdgeInsets.only(left: 10.0),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Row(
                                               children: [
                                                 CircleAvatar(
                                                   backgroundColor: Colors.white,
                                                   radius: 15,child: Image.asset("Assets/Images/drop.png",height: 20,width: 20,),
                                                 ),SizedBox(width: 10,),Text("97",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                 Text("%",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                               ],
                                             ),SizedBox(height: 5,),
                                             Text("Humidty")
                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),



                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   )
                 ],
             ),
              )
           ],
         )
        ],
      )

    ));
  }
}



