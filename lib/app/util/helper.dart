import 'package:eshop/app/util/ui.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class Helper{
  var  currentBackPressTime;

  Future<bool> onWillPop(){
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
    currentBackPressTime = now;
    Get.showSnackbar(
        Ui.defaultSnackBar(message: "Nhấn lần nữa để thoát!".tr));
    return Future.value(false);
  }
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  return Future.value(true);
}
}