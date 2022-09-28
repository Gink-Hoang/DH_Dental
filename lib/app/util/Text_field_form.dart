import 'dart:ui';

import 'package:eshop/app/util/constants.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final String lableText;
  final bool obscureText;
  final String prefixIconPath;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.lableText,
    required this.keyboardType,
    required this.prefixIconPath,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: SizeConfig.screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        style: GoogleFonts.poppins(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        obscureText: obscureText,
        cursorColor: kPrimaryColor,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Image.asset(prefixIconPath),
          suffixIcon: suffixIcon ?? const SizedBox(),
          hintText: hintText,
          labelText: lableText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: const EdgeInsets.only(top: 16.0),
        ),
      ),
    );
  }
}
