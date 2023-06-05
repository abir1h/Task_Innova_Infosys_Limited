import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class ChartController extends GetxController {

  RxList Lamps=[
    {
      "Title":"Lamp",
      "Image":"Assets/Images/highlight.png",


    }, {
      "Title":"Air-Conditioner",
      "Image":"Assets/Images/ac1.png",


    }, {
      "Title":"Television",
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
