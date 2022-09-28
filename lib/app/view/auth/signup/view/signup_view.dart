import 'package:eshop/app/util/buttons/default_button.dart';
import 'package:eshop/app/util/Text_field_form.dart';
import 'package:eshop/app/util/app_icons.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../login/view/login_view.dart';
import '../controller/signup_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Get.put(SignUpController());
    return Scaffold(
     // backgroundColor: Colors.blue,
      body: SafeArea(
        child: SizedBox(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo
                Image.asset(
                  AppIcons.appLogo,
                  height: 100,
                  color:Colors.blue,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text(
                  "Đăng kí",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                      color: Colors.black),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                CustomTextField(
                  controller: controller.usernameController,
                  obscureText: false,
                  hintText: "0934*****",
                  lableText: "Tài khoản",
                  keyboardType: TextInputType.phone,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),
                //password
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Obx(() => CustomTextField(
                      controller: controller.passwordController,
                      obscureText: controller.isHidePassword.value,
                      hintText: "******",
                      lableText: "Mật khẩu",
                      keyboardType: TextInputType.text,
                      prefixIconPath: AppIcons.lockIcon,
                      suffixIcon: InkWell(
                        child: controller.isHidePassword.value
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                        onTap: () {
                          controller.isHidePassword.value =
                              !controller.isHidePassword.value;
                        },
                      ),
                    )),

                //password 2
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Obx(() => CustomTextField(
                      controller: controller.password1Controller,
                      obscureText: controller.isHidePassword1.value,
                      hintText: "******",
                      lableText: "Xác thực mật khẩu",
                      keyboardType: TextInputType.text,
                      prefixIconPath: AppIcons.lockIcon,
                      suffixIcon: InkWell(
                        child: controller.isHidePassword1.value
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                        onTap: () {
                          controller.isHidePassword1.value =
                              !controller.isHidePassword1.value;
                        },
                      ),
                    )),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                CustomTextField(
                  controller: controller.firstnameController,
                  obscureText: false,
                  hintText: " ",
                  lableText: "Họ",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                CustomTextField(
                  controller: controller.midnameController,
                  obscureText: false,
                  hintText: "",
                  lableText: "Và",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                CustomTextField(
                  controller: controller.lastnameController,
                  obscureText: false,
                  hintText: "",
                  lableText: "Tên",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
              Row(
                 children: [
              Obx(()=>FlatButton.icon(
                  shape: const RoundedRectangleBorder(),
                onPressed: (){
                  DatePicker.showDatePicker(
                    context,
                    minTime: DateTime(1990),
                    maxTime: DateTime.now(),
                    onChanged: (date) {
                      controller.toDate.value=date;
                    },
                    onConfirm:(date){
                      if(
                      controller.toDate.value.difference(controller.fromDate.value).inDays==-1||
                          controller.toDate.value.difference(controller.fromDate.value).inDays==0){
                        controller.toDate.value=date;
                      }},
                  );
                },
                icon: const Icon(Icons.calendar_today),
                label:Text(
                  DateFormat("dd-MM-yyyy").format(controller.toDate.value).toString(),
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16
                  ),
                ))),
                 ],
               ).marginOnly(left: 20),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                CustomTextField(
                  controller: controller.locationController,
                  obscureText: false,
                  hintText: "",
                  lableText: "Địa chỉ",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.locationIcon,
                  suffixIcon: null,
                ),
                //Sign Up
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                CustomButton(onTap: () {}, btnText: "Đăng kí"),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Bạn đã có tài khoản?",
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 10,
                  )),
                  TextSpan(
                      text: "Đăng nhập",
                      style: GoogleFonts.poppins(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(const LoginView())),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
