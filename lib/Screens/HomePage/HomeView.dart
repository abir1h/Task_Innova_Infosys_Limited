import 'dart:convert';
import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:task_inova/Screens/HomePage/HomeController.dart';
import 'package:task_inova/Utils/Colors.dart';



class HomeView extends GetView<HomeController> {

  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    var size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                           padding: const EdgeInsets.all(5.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Row(mainAxisAlignment: MainAxisAlignment.center,                                               crossAxisAlignment: CrossAxisAlignment.end,

                                                 children: [
                                                   CircleAvatar(
                                                     backgroundColor: Colors.white,
                                                     radius: 12,child: Image.asset("Assets/Images/drop.png",height: 20,width: 20,),
                                                   ),SizedBox(width: 10,),Text("97",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                   Text("%",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                                 ],
                                               ),SizedBox(height: 5,),
                                                Center(child: Text(" Humidty"))
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
                                           padding: const EdgeInsets.all(5.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Row(mainAxisAlignment: MainAxisAlignment.center,
                                                 crossAxisAlignment: CrossAxisAlignment.end,
                                                 children: [
                                                   CircleAvatar(
                                                     backgroundColor: Colors.white,
                                                     radius: 12,child: Image.asset("Assets/Images/eye.png",height: 20,width: 20,),
                                                   ),SizedBox(width: 10,),Text("7",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                   Text("km",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                                 ],
                                               ),SizedBox(height: 5,),
                                               Center(child: Text(" Visibilty"))
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
                                           padding: const EdgeInsets.all(5.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Row(mainAxisAlignment: MainAxisAlignment.center,                                               crossAxisAlignment: CrossAxisAlignment.end,

                                                 children: [
                                                   CircleAvatar(
                                                     backgroundColor: Colors.white,
                                                     radius: 12,child: Image.asset("Assets/Images/wind.png",height: 20,width: 20,),
                                                   ),SizedBox(width: 10,),Text("3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                                                   Text("km/h",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),)
                                                 ],
                                               ),SizedBox(height: 5,),
                                               Center(child: Text(" NE Wind"))
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
           ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rooms",style: TextStyle(
                    color: AppColors.mainColor,fontWeight: FontWeight.w800,fontSize: 18
                  ),), Text("See All",style: TextStyle(
                    color: AppColors.mainColor,fontWeight: FontWeight.w800,fontSize: 18
                  ),),
                ],
            ),
             ),
            Container(
              width: size.width,
              height: size.height/3.8,
              child: ListView.builder(
               itemCount: controller.Rooms.length,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,

                 itemBuilder: (_,index){
               return  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: size.width/2.3,
                   height: size.height/3.8,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: AppColors.listbg
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             color: AppColors.mainColor,
                           ),child: Padding(
                             padding: const EdgeInsets.all(3.0),
                             child: Text(controller.Rooms[index]['Temp'],style: TextStyle(color: Colors.white),),
                           ),
                         ),
                       ),
                       Center(
                         child: Image.asset(controller.Rooms[index]['Image'],height: 100,width: 100,),
                       ),
                       Center(child: Text(controller.Rooms[index]['Title'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),)
                       ,  Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 color: AppColors.yellow,
                                 borderRadius: BorderRadius.circular(5),

                               ),child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text(controller.Rooms[index]['Devices'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
                               ),
                             ),
                             Text("   Devices",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14))
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               );

           }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Active",style: TextStyle(
                      color: AppColors.mainColor,fontWeight: FontWeight.w800,fontSize: 18
                  ),), Text("See All",style: TextStyle(
                      color: AppColors.mainColor,fontWeight: FontWeight.w800,fontSize: 18
                  ),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width/2.2,
                      height: size.height/5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.listbg2
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('Assets/Images/ac.png',height:80,width: 100,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Temparature",style: TextStyle(color: Colors.white),),
                                    Text("19 \u2103",style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("AC",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                                    Text("Living Room",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("Assets/Images/sw.png",height: 50,width: 70,)
                                ),
                              ),
                            ],
                          )




                        ],
                      ),
                    ),
                  ),SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width/2.2,
                      height: size.height/5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.listbg2
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('Assets/Images/lamp.png',height:80,width: 100,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Color",style: TextStyle(color: Colors.white),),
                                    Text("White",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Lamp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                                    Text("Living Room",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("Assets/Images/sw.png",height: 50,width: 70,)
                                ),
                              ),
                            ],
                          )




                        ],
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      )

    ));
  }
}



