import 'package:eshop/app/util/app_icons.dart';
import 'package:eshop/app/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(AppIcons.appLogo),
      ),
    );
  }
}
