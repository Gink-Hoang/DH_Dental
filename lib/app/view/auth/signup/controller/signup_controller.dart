import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  var isHidePassword = true.obs;
  var isHidePassword1 = true.obs;
  TextEditingController dateinput = TextEditingController();

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController midnameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  var selectedDate = DateTime
      .now()
  .obs;
  final fromDate = DateTime.now().obs;
  final toDate = DateTime.now().obs;

}
