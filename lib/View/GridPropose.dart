import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/View/ItemGridPropose.dart';
import 'package:flutter/material.dart';

class GridPropose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: GridView.builder(
            itemCount: 4,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: (MediaQuery.of(context).size.height / 3) + 55,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 2 - 20,
            ),
            itemBuilder: (context, index) {
              return listItemGridView[index];
            }));
  }
}

List<ItemGridPropose> listItemGridView = [
  ItemGridPropose(
    "Samsung",
    listSmartPhone[0],
    50000,
    sale: 50,
  ),
  ItemGridPropose(
    "Nokia",
    listSmartPhone[1],
    50000,
    sale: 30,
  ),
  ItemGridPropose("I phone", listSmartPhone[2], 50000),
  ItemGridPropose("Xiaomi", listSmartPhone[3], 50000),
];
