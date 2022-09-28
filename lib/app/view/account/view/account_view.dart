import 'package:eshop/app/components/log_out_widget.dart';
import 'package:eshop/app/view/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/size_config.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope( onWillPop:() async{return true;},
        child: Scaffold(
       body: ListView(
          primary: true,
          children: [
            const SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(10),
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 8, 20, 8),
                    height: SizeConfig.screenWidth*0.2,
                    width: SizeConfig.screenWidth*0.2,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: SizeConfig.screenWidth*0.1,
                          backgroundColor: Colors.blue,
                          child: CircleAvatar(
                            radius: SizeConfig.screenWidth*0.095,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Text("")
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Align(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: SizeConfig.screenWidth*0.03,
                            child: Icon(Icons.camera_alt,size:SizeConfig.screenWidth*0.03,color:Colors.black),
                          ),
                          alignment: Alignment.bottomRight,
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Khôi béo",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: SizeConfig.screenWidth*0.06),),
                      const SizedBox(height: 5,),
                      Text("093456790", style: TextStyle(color: Colors.grey, fontSize: SizeConfig.screenWidth * 0.04, fontWeight: FontWeight.w400),),
                    ],
                  )
                ],
              ),
            ),
            horiFunc(
                "assets/icon/user_with_bg.png",
                "Thông tin cá nhân",
                ontap: (){}),
            horiFunc('assets/icon/lock_with_bg.png', "Cài đặt mật khẩu", ontap: (){}),
            LogOutWidget(onTap: (){})
          ],
    )));
  }

  Widget horiFunc(String icon, String title, {required VoidCallback ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.01,
                ),
                Image.asset(icon,
                    height: SizeConfig.screenWidth * 0.11,
                    width: SizeConfig.screenWidth * 0.09),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.04,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.screenWidth * 0.045,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: SizeConfig.screenWidth * 0.04,
              color: Colors.black.withOpacity(0.7),
            )
          ],
        ),
      ),
    );
  }
}