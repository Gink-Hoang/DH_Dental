import 'dart:async';

import 'package:get/get.dart';

import '../../login/view/login_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Timer(const Duration(seconds: 3), () => Get.off(const LoginView()));
  }
}
