import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  String productName;
  int quantity;
  String pathImage;
  int price;
  ItemCart(this.productName, this.quantity, this.price, this.pathImage);
  bool isLongPress = false;
  @override
  State<StatefulWidget> createState() {
    return ItemCartState(); // TODO: implement createState
    throw UnimplementedError();
  }
}

class ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                if (widget.isLongPress = true) {
                  setState(() {
                    widget.isLongPress = false;
                  });
                }
              },
              onLongPress: () => setState(() {
                widget.isLongPress = true;
              }),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              widget.productName,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 35),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Quantity: ${widget.quantity}",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                45)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Image.asset(
                                    widget.pathImage,
                                    width:
                                        MediaQuery.of(context).size.height / 8,
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${widget.price} VND",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 40)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                    ],
                  )
                ]),
              ),
            ),
          ),
          widget.isLongPress
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                )
              : Text("")
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
