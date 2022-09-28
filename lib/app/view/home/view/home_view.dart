import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/view/home/controller/home_controller.dart';
import 'package:eshop/app/view/home/view/components/home_function_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/widget_list.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: () async{
          return true;
        },
        child:Scaffold(
          body: Stack(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/img/background.png",
                      width: SizeConfig.screenWidth,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        const Text("Xin chào quay lại ! ",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 18
                        ),
                        ),
                        const Text(
                          "Đặng Hoàng",
                          style: TextStyle(
                            color:Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w800
                          ),
                          softWrap: true,
                        ),
                      ],
                    ).marginOnly(left: 10,top: 10)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.screenHeight*0.25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: MediaQuery.removePadding(
                  removeTop: true,
                    context: context,
                    child: ListView(
                      primary: true,
                      children: [
                        const SizedBox(height: 5),
                        const Text('Dịch vụ của tôi',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20
                        ),).paddingOnly(left: 15,bottom: 10),
                        const SizedBox(height: 40),
                        Wrap(
                          alignment: WrapAlignment.spaceAround,
                          children: [
                            HomeFunctionCard(
                                title: "Đặt lịch",
                                onTap: (){},
                                image: 'assets/icon/canlendar.png',
                                bgColor: Colors.lightBlue,
                            ),
                            HomeFunctionCard(
                                title: "Tích điểm",
                                onTap: (){},
                                image: 'assets/icon/point.png',
                              bgColor: Colors.lightBlue,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top:SizeConfig.screenHeight*0.49),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white)

                ),
                child: MediaQuery.removePadding(
                  removeTop: true,
                    context: context,
                    child: ListView(
                      primary: false,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:<Widget> [
                           const Text(
                             "Khuyến mãi",
                             style: TextStyle(
                               color:Colors.black,
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                             ),
                           ).marginOnly(top: 6,left: 10),
                           FlatButton(
                              onPressed: (){},
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Xem thêm',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue
                                  ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                                ],
                              )).marginOnly(top: 6)
                         ],
                        ),
                        const SizedBox(height: 10,),
                        const buildList()
                      ],
                    )),
              )
            ],
          ),));
  }
}