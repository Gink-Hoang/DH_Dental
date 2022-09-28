import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/util/text_field_widget.dart';
import 'package:eshop/app/view/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInforView extends GetView<AccountController>{
  const UserInforView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    Get.put(AccountController());
    return Scaffold(
      body: SizedBox(
          height: SizeConfig.screenHeight*0.85,
          child:Form(
            key: controller.inforformKey,
            child: MediaQuery.removePadding(
              removeTop: true,
                context: context,
                child: ListView(
                  primary: true,
                  children: [
                    const SizedBox(height: 30,),
                    Text(
                      "Thông tin cá nhân",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30
                          )
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 30,),
                    TextFieldWidget(
                      isEdit: false,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      labelText: "Họ và tên".tr,
                      hintText: "",
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 18),
                      //trả dữ liệu về đây
                      initialValue: "",
                    ).marginSymmetric(vertical: 20),
              TextFieldWidget(
                isEdit: false,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
                labelText: "Số điên thoại".tr,
                hintText: "",
                labelStyle:
                const TextStyle(color: Colors.black, fontSize: 18),
                //trả dữ liệu về đây
                initialValue: "",
              ),
                    TextFieldWidget(
                      isEdit: false,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      labelText: "Ngày sinh".tr,
                      hintText: "",
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 18),
                        //trả dữ liệu về đây
                        initialValue: ""
                    ).marginSymmetric(vertical: 20),
                    TextFieldWidget(
                      isEdit: false,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      labelText: "Địa chỉ".tr,
                      hintText: "",
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 18),
                      //Để trả dữ liệu về đây
                        initialValue: ""
                    ).marginSymmetric(vertical: 20),
                ])),
          )
      ),
    );
  }
}