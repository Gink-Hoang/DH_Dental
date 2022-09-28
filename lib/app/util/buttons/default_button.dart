import 'package:eshop/app/util/constants.dart';
import 'package:eshop/app/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? btnText;
  final VoidCallback? onTap;
  final Color? btnColor;
  final Color? onPrimaryColor;
  final Widget? btnDataRow;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.btnText,
    this.btnColor = kPrimaryColor,
    this.btnDataRow,
    this.onPrimaryColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: btnColor,
          onPrimary: onPrimaryColor,
          minimumSize:
              Size(SizeConfig.screenWidth, SizeConfig.screenHeight * 0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: btnDataRow ??
            Center(
              child: Text(
                btnText!,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
      ),
    );
  }
}
