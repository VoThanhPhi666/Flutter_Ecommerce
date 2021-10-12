import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/View/ItemMessage.dart';
import 'package:flutter/material.dart';

class ListViewMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewMessageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class ListViewMessageState extends State<ListViewMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2 / 3,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: listItemMessage.length,
          itemBuilder: (context, index) {
            return listItemMessage[index];
          }),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

List<ItemMessage> listItemMessage = List.generate(
    10, (index) => ItemMessage(listUserName[index], listImageUser[index]));
