import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class LampController extends GetxController {

  RxList Lamps=[
    {
      "Title":"Smart Lamp",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",

    },{
      "Title":"Smart Lamp",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",

    },{
      "Title":"Smart Lamp",
      "Sub_Title":"Dinning Room",
      "Days":"Tue Thu",
      "From":"8",
      "To":"8",

    },

  ].obs;
  RxList active=[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }


}
