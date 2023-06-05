import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task_inova/Screens/HomePage/HomeController.dart';



class HomeView extends GetView<HomeController> {

  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    var size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(

    ));
  }
}



