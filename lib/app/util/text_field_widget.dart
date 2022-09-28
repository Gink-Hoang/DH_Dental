/*
 * Copyright (c) 2020 .
 */

import 'package:eshop/app/util/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key ?key,
    required this.initialValue,
    required this.hintText,
    required this.labelText,
    this.isEdit = true,
    required this.style,
    required this.labelStyle,this.maxLine = 1,
  }) : super(key: key);


  final String initialValue;
  final String hintText;
  final String labelText;
  final TextStyle style;
  final TextStyle labelStyle;
  final int maxLine;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
        margin: EdgeInsets.only(left: 10, right: 10, top: 00, bottom:5),
        decoration: BoxDecoration(
            color: Get.theme.primaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Get.theme.focusColor.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 5)),
            ],
            border: Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              labelText ,
              style: labelStyle ,
              textAlign: TextAlign.start,
            ),
            TextFormField(
              maxLines: maxLine,

              enabled: isEdit,
              keyboardType:TextInputType.text,
              initialValue: initialValue ,
              style: Get.textTheme.bodyText2,
              obscureText:  false,
              decoration: Ui.getInputDecoration(
                hintText: hintText ,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
