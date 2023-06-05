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

class SmartView extends GetView<ChartController> {
  const SmartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChartController());
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(

          backgroundColor: AppColors.bglamp,
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
                        height: size.height / 6,
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
                                    Text("Smart Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35)),
                                    CircleAvatar(
                                      radius: 20,backgroundColor: Colors.white,
                                      child: Image.asset("Assets/Images/filter.png",height: 20,width: 20,),
                                    )

                                  ]
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.bglamp,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Living Room",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 18),),
                                     Icon(
                                       Icons.keyboard_arrow_down_rounded,color: AppColors.mainColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),



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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.Lamps[index]['Title'],
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: 20,
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Dinning Room",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.normal),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: VerticalDivider(
                                                    color: Colors.black87,
                                                    thickness: 1),
                                              ),
                                              Text(
                                                "Tue Thu",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      "Assets/Images/sw.png",
                                      height: 60,
                                      width: 60,
                                    )
                                  ],
                                ),
                                Container(
                                  height: size.height / 15,
                                  width: size.width,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              controller.Lamps[index]['Image'],

                                              height: 40,
                                              width: 40,
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text("from"),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "8 ",
                                                        style: TextStyle(
                                                            color:
                                                            Colors.black87,
                                                            fontWeight:
                                                            FontWeight.w700,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        "pm",
                                                        style: TextStyle(
                                                            color:
                                                            Colors.black87,
                                                            fontWeight:
                                                            FontWeight.w700,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: VerticalDivider(
                                          thickness: 2,
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text("to"),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "8 ",
                                                        style: TextStyle(
                                                            color:
                                                            Colors.black87,
                                                            fontWeight:
                                                            FontWeight.w700,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        "am",
                                                        style: TextStyle(
                                                            color:
                                                            Colors.black87,
                                                            fontWeight:
                                                            FontWeight.w700,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              thickness: 2,
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.delete_forever_outlined,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Icon(
                                                  Icons.edit_note,
                                                  size: 20,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
