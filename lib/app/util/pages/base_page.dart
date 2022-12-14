import 'package:flutter/material.dart';
import '../size_config.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isLoading;
  final Color backgroundColors;
  final double margin;
  final bool showOnBackIcon;
  const BasePage(
      {Key? key,
        this.title = "",
        required this.child,
        this.isLoading = false,
        this.backgroundColors = Colors.blue,
        this.margin = 15,
        this.showOnBackIcon = true,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: key,
      backgroundColor: backgroundColors,
      body: Container(
        width: size.width,
        height: SizeConfig.screenHeight,
        margin: EdgeInsets.fromLTRB(margin, margin, margin, 0),
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight,
              width: size.width,
              margin: EdgeInsets.fromLTRB(0, SizeConfig.screenHeight * 0.09, 0,
                  SizeConfig.screenWidth * 0.01),
              child: child,
            ),
            Container(
              color: Colors.transparent,
              margin: EdgeInsets.fromLTRB(
                  10,
                  SizeConfig.screenHeight * 0.05,
                  SizeConfig.screenHeight * 0.01,
                  SizeConfig.screenHeight * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*GestureDetector(
                    onTap: onBack ??
                            () {
                          Navigator.of(context).pop();
                        },
                    child: SizedBox(
                      width: SizeConfig.screenWidth * 0.05,
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: size.width * 0.06,
                        color:
                        showOnBackIcon ? Colors.black : Colors.transparent,
                      ),
                    ),
                  ),
*/                  Container(
                    constraints:
                    BoxConstraints(maxWidth: SizeConfig.screenWidth * 0.8),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /*showHelp
                      ? InkWell(
                    onTap: () {
                      showHelpTap(context);
                    },
                    child: SizedBox(
                      // width: SizeConfig.screenWidth * 0.1,
                      child: helpWidget,
                    ),
                  )
                      : const SizedBox(
                    // width: SizeConfig.screenWidth * 0.1,
                    child: Text("  "),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
