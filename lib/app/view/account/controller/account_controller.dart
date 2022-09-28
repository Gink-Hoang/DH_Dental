import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> inforformKey = GlobalKey<FormState>();
  var hidePassword=true.obs;
  var hideCPassword=true.obs;
  var hideNPassword=true.obs;
  var oldPass="".obs;
  var newPass="".obs;
  var cnPass="".obs;
  var number=0.obs;




}