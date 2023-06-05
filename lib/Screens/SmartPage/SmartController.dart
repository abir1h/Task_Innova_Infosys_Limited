import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class SmartController extends GetxController {

  RxList Lamps=[
    {
      "Title":"Smart Lamp",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",
      "Image":"Assets/Images/highlight.png",


    },{
      "Title":"Air-Conditioner",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",
      "Image":"Assets/Images/ac1.png",


    },{
      "Title":"Television",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",
      "Image":"Assets/Images/tv.png",


    },

  ].obs;
  RxList active=[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }


}
