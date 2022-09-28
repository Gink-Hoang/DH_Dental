import 'package:eshop/app/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../../account/controller/account_controller.dart';
import '../../account/view/account_view.dart';
import '../../home/controller/home_controller.dart';

class RootController extends GetxController{
  var currentIndex=0.obs;
  List<Widget> pages=[
    const HomeView(),
    const BookingView(),
    const NoficationView(),
    const AccountView()
  ];
  Widget get currentPage=>pages[currentIndex.value];


  void changePageInRoot(int _index) {
    currentIndex.value = _index;
  }

  void inputPageController() {
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<HomeController>(() => HomeController());
  }

  void changePageOutRoot(int _index) {
    currentIndex.value = _index;
    Get.offNamedUntil(Routes.ROOT, (Route route) {
      if (route.settings.name == Routes.ROOT) {
        return true;
      }
      return false;
    }, arguments: _index);
  }

  Future<void> changePage(int _index) async {
    if (Get.currentRoute == Routes.ROOT) {
      changePageInRoot(_index);
    } else {
      changePageOutRoot(_index);
    }
    await refreshPage(_index);
  }

  Future<void> refreshPage(int _index) async{
    switch(_index){
      case 0:
        {
          break;
        }
      case 2:
        {
          break;
        }
    }
  }
}