import 'package:ecommerce_application/Screen/CartPage.dart';
import 'package:ecommerce_application/Screen/NotificationPage.dart';
import 'package:ecommerce_application/StateManeger/Bloc/DrawerBloc.dart';
import 'package:ecommerce_application/StateManeger/Event/DrawerEvent.dart';
import 'package:ecommerce_application/View/IconWithCounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar();
  @override
  State<StatefulWidget> createState() {
    return CustomAppbarState();
  }
}

class CustomAppbarState extends State<CustomAppbar>
    with SingleTickerProviderStateMixin {
  late DrawerBloc drawerBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    drawerBloc = BlocProvider.of(context);
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  drawerBloc.add(OpenDrawerEvent());
                },
                child: Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage("lib/Asset/Images/avtphi.jpg")),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  "Thành Phi",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 46),
                ),
              ),
              GestureDetector(
                // onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context){
                //   return NotificationPage();

                // } ))
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NotificationPage();
                  }));
                },
                child: IconWithCounter(
                    Icons.notifications_none_outlined, 3, Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width -
                      (MediaQuery.of(context).size.width * 3 / 4 +
                          (MediaQuery.of(context).size.width / 13) * 2) -
                      20,
                ),
              ),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CartPage();
                      })),
                  child: IconWithCounter(
                      Icons.shopping_cart_outlined, 1, Colors.black)),
              Padding(
                padding: EdgeInsets.only(right: 10),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 5.0, top: 5, bottom: 5, right: 3),
              child: Container(
                padding: EdgeInsets.only(left: 5),
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width * 3 / 4,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 45,
                      ),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 2),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width / 4 - 10,
                  height: MediaQuery.of(context).size.height / 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[200]),
                  child: Center(
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
