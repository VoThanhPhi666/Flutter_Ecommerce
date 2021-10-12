import 'package:ecommerce_application/View/Avatar.dart';
import 'package:flutter/material.dart';

class ItemProductStory extends StatelessWidget {
  String pathUserImage;
  String pathSmartPhone;
  ItemProductStory(this.pathSmartPhone, this.pathUserImage);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        pathSmartPhone,
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 5,
              right: 5,
              child: SizedBox(
                  width: MediaQuery.of(context).size.height / 20,
                  height: MediaQuery.of(context).size.height / 20,
                  child: Avatar(pathUserImage)))
        ],
      ),
    );
  }
}
