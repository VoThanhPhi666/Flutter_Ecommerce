import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class IconWithCounter extends StatefulWidget {
  Color? color;
  int counterNumber;
  IconData icondata;
  IconWithCounter(this.icondata, this.counterNumber, this.color);
  @override
  State<StatefulWidget> createState() {
    return IconWithCounterState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class IconWithCounterState extends State<IconWithCounter> {
  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(),
      badgeContent: Text("${widget.counterNumber}"),
      badgeColor: Colors.red,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:Colors.blue[100]),
        child: Icon(
          widget.icondata,
          size: MediaQuery.of(context).size.width / 16,
          color: widget.color,
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
