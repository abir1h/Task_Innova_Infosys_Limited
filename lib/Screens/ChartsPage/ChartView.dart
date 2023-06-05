import 'dart:convert';
import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:task_inova/Screens/ChartsPage/ChartController.dart';
import 'package:task_inova/Screens/HomePage/HomeController.dart';
import 'package:task_inova/Utils/chart.dart';

import '../../Utils/Colors.dart';

class ChartView extends GetView<ChartController> {
  const ChartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChartController());
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: size.width,
                        height: size.height / 2.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'Assets/Images/topbar.png',
                                ),
                                fit: BoxFit.fill)),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text("Power Usage",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35)),
                                 CircleAvatar(
                                   radius: 20,backgroundColor: Colors.white,
                                   child: Image.asset("Assets/Images/filter.png",height: 20,width: 20,),
                                 )

                                ]
                            ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Usage This Week",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                                  Row(
                                    children: [
                                      Text("2500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                                      Text("watt",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14),),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            Chart()



                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Total Today  ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ))
                          ],
                        ),
                        Text("See All",style: TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.w700,fontSize: 16),)
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.bglamp,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [

                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor: Colors.white,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset(controller.Lamps[index]['Image'],height: 50,width: 50,),
                                            ),
                                          ),SizedBox(width: 20,),Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(controller.Lamps[index]['Title'],style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 16),),
                                              Text("Kithchen - Bedroom",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.normal,fontSize: 14),),
                                              Container(
                                                height: 20,
                                                child: Row(
                                                  children: const [
                                                    Text(
                                                      "8 unit",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.normal),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(2.0),
                                                      child: VerticalDivider(
                                                          color: Colors.grey,
                                                          thickness: 1),
                                                    ),
                                                    Text(
                                                      "12 jam",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.normal),
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Column(children: [
                                      Row(
                                        children: [
                                          Text("1000 ",style: TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.w700,fontSize: 16),),
                                          Text("Kw/h",style: TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.normal,fontSize: 16),)

                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.auto_graph,color: AppColors.mainColor,),
                                          Text(" - 11.2%")
                                        ],
                                      )
                                    ],)
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: controller.Lamps.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  )
                ],
              ),
            )));
  }
}
