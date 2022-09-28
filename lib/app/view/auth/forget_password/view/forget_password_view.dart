import 'package:eshop/app/util/buttons/default_button.dart';
import 'package:eshop/app/util/app_icons.dart';
import 'package:eshop/app/util/constants.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../util/Text_field_form.dart';
import '../controller/forget_password_controller.dart';

class ForgetPassWordView extends GetView<ForgetPasswordController> {
  const ForgetPassWordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordController());
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Image.asset(
                  AppIcons.appLogo,
                  height: 70,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  "Nhập tên tài khoản",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),

                //account
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                CustomTextField(
                  controller: controller.usernameController,
                  obscureText: false,
                  lableText: "Tài khoản",
                  hintText: "Nhập nội dung",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),

                //continue
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                CustomButton(onTap: () {}, btnText: "Tiếp tục")
              ],
            )),
      ),
    );
  }
}
