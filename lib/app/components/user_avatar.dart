import 'package:flutter/material.dart';

import '../util/size_config.dart';

class UserAvatarVer extends StatelessWidget{
  final bool showDetail;
  final String name;
  final String phone;
  const UserAvatarVer({Key? key,this.showDetail=true,required this.name,required this.phone}):super(key:key);

  @override
  Widget build(BuildContext context){
    List<String> listName=name.split(" ");
    String sName;
    try{
      if(listName.length >=  2){
        sName = "${listName[listName.length -2].substring(0,1)}${listName[listName.length -1].substring(0,1)}";
      } else{
        sName = name.substring(0,1);
      }
    } catch(e){
      sName = "";
    }
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(10),
      width: SizeConfig.screenWidth,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),

      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 20, 8),
            height: SizeConfig.screenWidth*0.2,
            width: SizeConfig.screenWidth*0.2,
            child: Stack(
              children:[
              CircleAvatar(
                  radius: SizeConfig.screenWidth * 0.1,
                  backgroundColor: Colors.blue,
                  child:  CircleAvatar(
                    radius: SizeConfig.screenWidth * 0.095,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(sName, style: TextStyle(
                          color: Colors.blue,
                          fontSize: SizeConfig.screenWidth * 0.06,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
              ),
                const SizedBox(width: 10,),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 0.03,
                    child: Icon(Icons.camera_alt,
                        size:0.03,
                        color:Colors.black
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sName,
                      style:TextStyle(
                        color:Colors.black,
                        fontSize: SizeConfig.screenWidth*0.06,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height:5),
                    Text(phone,style: TextStyle(color: Colors.grey,fontSize: SizeConfig.screenWidth*0.06,fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
          )
        ],
      ),

    );
    }
  }