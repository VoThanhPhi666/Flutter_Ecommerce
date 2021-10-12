import 'package:ecommerce_application/View/ItemProposeInDetail.dart';
import 'package:flutter/material.dart';
class ProposeInDetail extends StatelessWidget
{
  String title;
  ProposeInDetail(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue[300],borderRadius: BorderRadius.circular(30)),
              child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              
              
          ),
            ),],),
          SingleChildScrollView(scrollDirection: Axis.horizontal,physics: ScrollPhysics(),child: Row(
            children:listItemPropose
            ,
          )),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

List<ItemProposeInDetail> listItemPropose = [
  ItemProposeInDetail(
    "Decoration text",
    "https://th.bing.com/th/id/OIP.Lskvb1F-28fYOuP05bNGJwHaHa?w=206&h=206&c=7&r=0&o=5&dpr=1.25&pid=1.7",
    50000,
    sale: 50,
  ),
  ItemProposeInDetail(
    "Decoration text",
    "https://th.bing.com/th/id/OIP._aPMjVsaw-faSrV8R2YWmQHaHa?w=206&h=206&c=7&r=0&o=5&dpr=1.25&pid=1.7",
    50000,
    sale: 30,
  ),
  ItemProposeInDetail(
      "Decoration text",
      "https://th.bing.com/th/id/OIP.QtjrIkWAYgScf-6aoX8QGwHaM8?w=189&h=330&c=7&r=0&o=5&dpr=1.25&pid=1.7",
      50000),
  ItemProposeInDetail(
      "Decoration text",
      "https://th.bing.com/th/id/OIP.zpGo3Q7bnemdBqSY8rtVOAHaI4?w=206&h=247&c=7&r=0&o=5&dpr=1.25&pid=1.7",
      50000),
];
