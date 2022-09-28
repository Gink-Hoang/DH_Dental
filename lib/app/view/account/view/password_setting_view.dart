import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/view/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordSettingView extends GetView<AccountController>{
  const PasswordSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        height: SizeConfig.screenHeight*0.89,
        child:Form(
          key: controller.formKey,
          child: MediaQuery.removePadding(
              context: context,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(height: 30,),
                  Text(
                    "Cài đặt mật khẩu",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(

                      color: Colors.black,
                      fontSize: 30
                    )
                  ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 30,),
                  Obx(()=>TextFormField(
                    decoration: InputDecoration(
                      labelText: "Mật khẩu hiện tại".tr,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                      ),
                      hintText: "••••••••••••",
                      suffixIcon:IconButton(
                        color: Colors.black,
                        onPressed: () {
                            controller.hidePassword.value =
                            !controller.hidePassword.value;
                          },
                      icon: Icon(controller.hidePassword.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    onSaved: (s){},
                    validator: (value){
                      if(value==null || value.isEmpty|| value.length<6){
                        return "Mật khẩu lớn 6 kí tự";
                      }
                      return null;
                    },
                    obscureText: controller.hidePassword.value,
                    keyboardType: TextInputType.text,
                  )).marginSymmetric(horizontal: 10,vertical: 10),
                  Obx(()=>TextFormField(
                    decoration: InputDecoration(
                        labelText: "Mật khẩu mới".tr,
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                        hintText: "••••••••••••",
                        suffixIcon:IconButton(
                          color: Colors.black,
                          onPressed: () {
                            controller.hideNPassword.value =
                            !controller.hideNPassword.value;
                          },
                          icon: Icon(controller.hideNPassword.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    onSaved: (s){},
                    validator: (value){
                      if(value==null || value.isEmpty || value!=controller.newPass.value){
                        return "Không trùng mật khẩu mới";
                      }
                      return null;
                    },
                    obscureText: controller.hideNPassword.value,
                    keyboardType: TextInputType.text,
                  )).marginSymmetric(horizontal: 10,vertical: 10),
                  Obx(()=>TextFormField(
                    decoration: InputDecoration(
                        labelText: "Nhập lại mật khẩu mới".tr,
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                        hintText: "••••••••••••",
                        suffixIcon:IconButton(
                          color: Colors.black,
                          onPressed: () {
                            controller.hideCPassword.value =
                            !controller.hideCPassword.value;
                          },
                          icon: Icon(controller.hideCPassword.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    onSaved: (s){},
                    validator: (value){
                      if(value==null || value.isEmpty|| value.length<6){
                        return "Mật khẩu lớn 6 kí tự";
                      }
                      return null;
                    },
                    obscureText: controller.hideCPassword.value,
                    keyboardType: TextInputType.text,
                  )).marginSymmetric(horizontal: 10,vertical: 10),
                Container(
                  width: SizeConfig.screenWidth*0.12,
                  height: SizeConfig.screenWidth*0.12,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: MaterialButton(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){},
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 17),
                    color:Get.theme.colorScheme.secondary,
                    disabledColor: Get.theme.focusColor,
                    disabledElevation: 0,
                    child:Text('Đổi mật khẩu',
                    style: Get.textTheme.headline6?.merge(TextStyle(color:Colors.white)),),
                    elevation: 0,
                  ),
                ).paddingSymmetric(vertical: 10,horizontal: 30)
                ],

              )),

        )
      ),
    );
  }
}