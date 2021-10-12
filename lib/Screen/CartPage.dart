import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/View/ItemCart.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CartPageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class CartPageState extends State<CartPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<AnimatedListState> keyList = GlobalKey<AnimatedListState>();
  late AnimationController animationController;
  Tween<Offset> offsetList =
      Tween<Offset>(begin: Offset(1.5, 0), end: Offset.zero);

  List<ItemCart> listItemCart = List.generate(10,
      (index) => ItemCart("Chó Siêu cấp", 4, 200000, listSmartPhone[index]));

  List<ItemCart> listTemp = [];
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    animationController.forward();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      for (int i = 0; i < listItemCart.length; i++) {
        await Future.delayed(Duration(milliseconds: 100));
        listTemp.insert(listTemp.length, listItemCart[i]);
        keyList.currentState!.insertItem(listTemp.length - 1);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink, Colors.purple])),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 200 - 20,
                right: 20,
                child: SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0, 2.5), end: Offset.zero)
                          .animate(animationController),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 2, bottom: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                                blurStyle: BlurStyle.outer)
                                          ],
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.open_with,
                                            color: Colors.pink,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                          ))),
                                  Text(
                                    "Expand",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                60),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 2, bottom: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                                blurStyle: BlurStyle.outer)
                                          ],
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.delete_forever_outlined,
                                            color: Colors.pink,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                          ))),
                                  Text(
                                    "Delete",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                60),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 2, bottom: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                                blurStyle: BlurStyle.outer)
                                          ],
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.purple,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                          ))),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                60),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 2, bottom: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                                blurStyle: BlurStyle.outer)
                                          ],
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.radio_button_checked,
                                            color: Colors.purple,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                          ))),
                                  Text(
                                    "Select \n   All",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                60),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 2 / 3 + 10,
              padding: EdgeInsets.all(10),
              child: AnimatedList(
                key: keyList,
                initialItemCount: listTemp.length,
                itemBuilder: (BuildContext context, int index,
                    Animation<double> animation) {
                  return SlideTransition(
                    position: animation.drive(offsetList),
                    child: listTemp[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
