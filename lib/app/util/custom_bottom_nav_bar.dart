
import 'package:flutter/material.dart';

const Color primary_color=Colors.blueAccent;
const Color bg_color=Color(0xffE2E7F2);

class CustomBottomNavBar extends StatefulWidget{

  final Color backgroundColor;
  final Color itemColor;
  final List<CustomBottomNavItem> children;
  final Function(int) onChange;
  final int currentIndex;

  const CustomBottomNavBar(
    {Key? key,
      this.backgroundColor=bg_color,
      this.itemColor=primary_color,
      this.currentIndex=0,
      required this.children,
      required this.onChange
    }):super(key:key);

  @override
  _CustomBottomNavBar createState()=>_CustomBottomNavBar();
}

class _CustomBottomNavBar extends State<CustomBottomNavBar>{

  void _changeIndex(int index){
    if(widget.onChange!=null){
      widget.onChange(index);
    }
  }

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Container(
      height: 60,
      color: widget.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.children.map((item){
          var color=item.color ?? widget.itemColor;
          var icon=item.icon;
          int index=widget.children.indexOf(item);
          return GestureDetector(
            onTap:(){
              _changeIndex(index);
            },
            child: Icon(
              icon,
              size:24,
              color: widget.currentIndex==index
                ? item.activeColor
                : color.withOpacity(0.5),
            ),
          );
        }).toList(),
      ),
    );
  }
}
class CustomBottomNavItem {
  final IconData icon;
  final String label;
  final Color color;
  final Color activeColor;

  const CustomBottomNavItem({
    required this.icon, required this.color, required this.label, this.activeColor = Colors.blue});
}
