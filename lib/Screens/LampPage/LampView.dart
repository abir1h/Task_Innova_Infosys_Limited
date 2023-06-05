import 'dart:convert';
import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:task_inova/Screens/HomePage/HomeController.dart';

import '../../Utils/Colors.dart';
import 'LampController.dart';

class Lampview extends GetView<LampController> {
  const Lampview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LampController());
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
                        height: size.height / 1.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'Assets/Images/topbar.png',
                                ),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                          top: -50,
                          right: 0,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/Images/lmp.png',
                                height: 200,
                              ),
                            ],
                          )),
                      Positioned(
                          top: 120,
                          right: 10,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/Images/glow.png',
                                height: 100,
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Text(
                                  "Back",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Dining Room",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                "Assets/Images/sw.png",
                                height: 60,
                                width: 70,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "80",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40),
                                    ),
                                    Text(
                                      " %",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Brightness",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Intensity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'Assets/Images/lowlight.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  Expanded(
                                    child: IconStepper(
                                      lineColor: Colors.white,
                                      scrollingDisabled: true,
                                      nextButtonIcon: Icon(
                                        Icons.add,
                                        color: Colors.transparent,
                                      ),
                                      previousButtonIcon: Icon(
                                        Icons.add,
                                        color: Colors.transparent,
                                      ),
                                      stepRadius: 15,
                                      icons: [
                                        Icon(Icons.supervised_user_circle),
                                        Icon(Icons.flag),
                                        Icon(Icons.access_alarm),
                                      ],

                                      // activeStep property set to activeStep variable defined above.
                                      activeStep: 2,

                                      // This ensures step-tapping updates the activeStep.
                                      onStepReached: (index) {},
                                    ),
                                  ),
                                  Image.asset(
                                    'Assets/Images/highlight.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 22.0, right: 28),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Usages",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Use Today",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "50",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        " watt",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Use Week",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "500",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        " watt",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Use month",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "50000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        " watt",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
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
                              "Schedule  ",
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
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ))
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                color: AppColors.mainColor,
                                size: 25,
                              ),
                            ))
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
                                          "Smart Lamp",
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
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "Assets/Images/highlight.png",
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
