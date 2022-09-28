import 'package:eshop/app/view/account/view/password_setting_view.dart';
import 'package:eshop/app/view/account/view/user_info_view.dart';
import 'package:eshop/app/view/auth/forget_password/view/forget_password_view.dart';
import 'package:eshop/app/view/point/view/point_view.dart';
import 'package:flutter/material.dart';

import 'app/view/account/view/account_view.dart';
import 'app/view/auth/login/view/login_view.dart';
import 'app/view/home/view/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: PointView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
