import 'dart:math';

import 'package:eshop/app/util/size_config.dart';
import 'package:eshop/app/view/point/controller/point_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PointView extends GetView<PointController>{

  var count=0;
  @override
  Widget build(BuildContext context){
   ListView listItem;{
     return new ListView.builder(
         itemBuilder: (BuildContext context, int index) {
           return ListView(
             children: [
               Card(
                 child: ListTile(
                   trailing: Icon(Icons.person),
                   title: Text("Nhận từ ứng dụng "),
                   subtitle: Text('22-09-2022 14:32'),
                 ),
               ),
               Card(
                 child: ListTile(
                   trailing: Icon(Icons.person),
                   title: Text("Nhận từ ứng dụng "),
                   subtitle: Text('22-09-2022 14:32'),
                 ),
               ),
               Card(
                 child: ListTile(
                   trailing: Icon(Icons.person),
                   title: Text("Nhận từ ứng dụng "),
                   subtitle: Text('22-09-2022 14:32'),
                 ),
               ),
             ],
           );
         });
   }

    SizeConfig().init(context);
    final controller=Get.put(PointController());

    return Scaffold(
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            SizedBox(height: 20.0,),
            Card(
              child:ListTile(
                title:Text("100 xu hiện có ",style: TextStyle(color:Colors.green),),
                subtitle: Text('100 xu sẽ hết hạn vào 31-12-2022'),
              )
            ).marginOnly(bottom: 10),
            DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        unselectedLabelColor: Colors.black87,
                        labelColor: Colors.green,
                        tabs: [
                          Tab(text: "Tất cả lịch sử"),
                          Tab(text: "Đã nhân"),
                          Tab(text: "Đã dùng")
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(
                          color:Colors.grey,
                          width: 0.5
                        )),
                      ),  
                      child: TabBarView(
                        children:[
listItem(),
                        Container(Text("hello"))]
                      ),
                    )
                  ],
                ))
          ],
        ),
      )
    );
  }
}