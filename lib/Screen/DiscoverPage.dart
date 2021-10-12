import 'dart:core';

import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/View/ItemDiscover.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DiscoverPageState();

    // TODO: implement createState
    throw UnimplementedError();
  }
}

class DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.builder(
            itemCount: listPathMainImage.length,
            itemBuilder: (context, index) {
              return ItemDiscover(listImageUser[index], listUserName[index],
                  listPathMainImage[index]);
            }),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}

List<String> listPathMainImage = [
  "lib/Asset/Images/Discover1.jpg",
  "lib/Asset/Images/Discover2.jpg",
  "lib/Asset/Images/Discover3.jpg",
  "lib/Asset/Images/Discover4.jpg",
  "lib/Asset/Images/Discover5.jpg",
  "lib/Asset/Images/Discover6.jpg",
  "lib/Asset/Images/Discover7.jpg",
  "lib/Asset/Images/Discover8.jpg",
  "lib/Asset/Images/Discover9.jpg",
  "lib/Asset/Images/Discover10.jpg",
];
