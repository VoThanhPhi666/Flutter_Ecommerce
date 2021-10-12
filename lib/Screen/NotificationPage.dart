import 'package:ecommerce_application/View/ItemNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationPageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(child: Text("Notification")),
          ),
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.blue,
                      Colors.blue.shade200,
                    ])),
              ),
              Positioned(
                right: 0,
                child: SlideTransition(
                  position: Tween<Offset>(begin: Offset(2, 0), end: Offset.zero)
                      .animate(controller),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          blurStyle: BlurStyle.normal,
                          color: Colors.white)
                    ]),
                    width: MediaQuery.of(context).size.width * 3 / 4,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return listItem[index];
                        }),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0, -2), end: Offset.zero)
                          .animate(controller),
                  child: Container(
                    padding: EdgeInsets.only(top: 100),
                    width: MediaQuery.of(context).size.width * 1 / 4,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.blueAccent,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                25,
                                      ))),
                              Text(
                                "Back",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            60),
                              )
                            ],
                          ),
                        ),
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
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete_forever_outlined,
                                        color: Colors.blueAccent,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                25,
                                      ))),
                              Text(
                                "Delete",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            60),
                              )
                            ],
                          ),
                        ),
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
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.open_with,
                                        color: Colors.blueAccent,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                25,
                                      ))),
                              Text(
                                "Expand",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            60),
                              )
                            ],
                          ),
                        ),
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
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.blueAccent,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                25,
                                      ))),
                              Text(
                                "Select\n   All",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            60),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

List<ItemNotification> listItem =
    List.generate(10, (index) => ItemNotification());
