import 'package:eshop/app/util/buttons/default_button.dart';
import 'package:eshop/app/util/Text_field_form.dart';
import 'package:eshop/app/util/app_icons.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/view/home/view/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../forget_password/view/forget_password_view.dart';
import '../../signup/view/signup_view.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SizedBox(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //app Logo
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Image.asset(
                  AppIcons.appLogo,
                  height: 70,
                ),

                //Don't have an account
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  "Đăng nhập",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0),
                ),
                //account
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CustomTextField(
                  controller: controller.usernameController,
                  obscureText: false,
                  hintText: "093554****",
                  lableText: "Tài khoản",
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),

                //password
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
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
                                Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                                size: 20,
                              ),
                        onTap: () {
                          controller.isHidePassword.value =
                              !controller.isHidePassword.value;
                        },
                      ),
                    )),

                //Login button
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                CustomButton(
                    onTap: () {
                      Get.to(HomeView());
                    },
                    btnText: "Đăng nhập"),

                //forget password
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Obx(() => Checkbox(
                          value: controller.check.value,
                          onChanged: (value) {
                            controller.check.value = !controller.check.value;
                          },
                        )),
                    Text(
                      "Nhớ mật khẩu",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.2,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(ForgetPassWordView());
                        },
                        child: Text(
                          "Quên mật khẩu",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Colors.white),
                        ))
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Bạn không có tài khoản ?",
                        style: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                        text: "Đăng kí",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: Colors.black,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(SignUpView()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
