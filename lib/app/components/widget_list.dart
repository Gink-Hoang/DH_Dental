import 'package:flutter/material.dart';

class buildList extends StatefulWidget{
  const buildList({Key? key}) : super(key: key);
  @override
  _buildList createState()=>_buildList();
}

class _buildList extends State<buildList>{
  List<String> list=[
    'assets/img/img banner.png',
    'assets/img/home_bg.png'
  ];
  int _index=0;
  late final String img;
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height:200 ,
      child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: 2,
          onPageChanged: (int index)=>setState(()=>_index=index),
          itemBuilder:(_,i){
              return Transform.scale(
                   scale: i==_index ? 1:1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child:Image.asset(list[i]),
                    ),
                  ),
                );

    },
    ),
    );
  }
}