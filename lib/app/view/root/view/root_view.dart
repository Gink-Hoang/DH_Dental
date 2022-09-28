import 'package:eshop/app/util/custom_bottom_nav_bar.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/view/root/controller/root_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootView extends GetView<RootController>{
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Get.put(RootController());
    SizeConfig().init(context);
    return Obx((){
      return Scaffold(
        body: controller.currentPage,
        bottomNavigationBar: CustomBottomNavBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.colorScheme.secondary,
          currentIndex: controller.currentIndex.value,
          onChange: (index){
            controller.changePage(index);
          },
          children: [
            CustomBottomNavItem(
                icon: Icons.home,
                color: Colors.black,
                label: "Trang chủ".tr),
            CustomBottomNavItem(
                icon: Icons.calendar_month,
                color: Colors.black,
                label: "Đặt lịch".tr),
            CustomBottomNavItem(
                icon: Icons.history,
                color: Colors.black,
                label: "Lịch sử".tr),
            CustomBottomNavItem(
                icon: Icons.person,
                color: Colors.black,
                label: "Tài khoản".tr),
          ],
        ),
      );
    });
  }
}