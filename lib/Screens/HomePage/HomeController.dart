import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class HomeController extends GetxController {

  RxList Rooms=[
    {
    "Temp":"17 \u2103",
    "Image":"Assets/Images/leaving.png",
    "Devices":"8",
    "Title":"Living Room",

  }, {
    "Temp":"15 \u2103",
    "Image":"Assets/Images/bedroom.png",
    "Devices":"5",
    "Title":"Bed Room",

  },

  ].obs;
  RxList active=[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }


}
