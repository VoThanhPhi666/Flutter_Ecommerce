import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/Screen/StartPage.dart';
import 'package:ecommerce_application/StateManeger/Bloc/DrawerBloc.dart';
import 'package:ecommerce_application/StateManeger/Bloc/LoadingBloc.dart';
import 'package:ecommerce_application/StateManeger/Event/DrawerEvent.dart';
import 'package:ecommerce_application/StateManeger/Event/LoadingEvent.dart';
import 'package:ecommerce_application/StateManeger/State/DrawerState.dart';
import 'package:ecommerce_application/StateManeger/State/LoadingState.dart';
import 'package:ecommerce_application/View/CustomAppbar.dart';
import 'package:ecommerce_application/View/GridPropose.dart';
import 'package:ecommerce_application/View/IconWithCounter.dart';
import 'package:ecommerce_application/View/ItemGridPropose.dart';
import 'package:ecommerce_application/View/ItemProductStory.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late DrawerBloc drawerBloc;
  ScrollController listViewController = ScrollController();
  late LoadingBloc loadingBloc;
  late AnimationController animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    Animation animation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    // TODO: implement initState
    loadingBloc = BlocProvider.of(context);
    listViewController.addListener(() {
      if (listViewController.position.maxScrollExtent -
              listViewController.position.pixels <=
          0) loadingBloc.add(NotifyEnableLoadingEvent());
    });
    drawerBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
        ),
        GestureDetector(
          onTap: () => drawerBloc.add(CloseDrawerEvent()),
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width / 2 + 25,
              height: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "lib/Asset/Images/avtphi.jpg",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Text(
                      "vothanhphi7189@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                    child: Text(
                      " 0948144871",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                    child: Text(
                      "98 Phan Van Han, F17, \nBinh Thanh, TP.HCM",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 300),
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Log out",
                            style: TextStyle(fontSize: 25),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        BlocBuilder<DrawerBloc, DrawerState>(
          builder: (context, state) {
            return AnimatedBuilder(
                animation: animationController,
                builder: (context, child) {
                  if (state is OpenDrawerState) {
                    animationController.forward();
                  }
                  if (state is CloseDrawerState) {
                    animationController.reverse();
                  }
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0, 3, 200 * animationController.value)
                      ..rotateY((math.pi / 6) * animationController.value),
                    child: SafeArea(
                        child: Scaffold(
                      backgroundColor: Colors.blue[100],
                      // appBar: PreferredSize(
                      //     preferredSize:
                      //     Size.fromHeight(MediaQuery.of(context).size.height / 7),
                      //     child: CustomAppbar()),
                      body: Stack(
                        children: [
                          Positioned.fill(
                            top: MediaQuery.of(context).size.height / 7 - 100,
                            child: Container(
                              child: ListView(
                                  controller: listViewController,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 130, left: 10, bottom: 10),
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.pink[100]),
                                            child: Text(
                                              "New Product",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          40),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child:
                                          Row(children: listItemProductStory),
                                    ),
                                    Divider(
                                      indent: 10,
                                      endIndent: 10,
                                      thickness: 2,
                                      height: 30,
                                      color: Colors.white,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 10, bottom: 10),
                                          child: Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.pink[100]),
                                              child: Text(
                                                "Propose",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            40),
                                              )),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, right: 10, bottom: 10),
                                            child: MergeSemantics(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Filter",
                                                    style: TextStyle(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            45),
                                                  ),
                                                  Icon(Icons.arrow_drop_down)
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                    GridPropose(),
                                    BlocBuilder<LoadingBloc, LoadingState>(
                                        builder: (context, state) {
                                      if (state is IsLoadingState) {
                                        Future.delayed(Duration(seconds: 2))
                                            .then((z) => loadingBloc
                                                .add(NotifyEndLoadingEvent()));
                                        return Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      }

                                      return Padding(
                                          padding: EdgeInsets.all(2));
                                    })
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: PreferredSize(
                                preferredSize: Size.fromHeight(
                                    MediaQuery.of(context).size.height / 7),
                                child: CustomAppbar()),
                          )
                        ],
                      ),
                    )),
                  );
                });
          },
        ),
      ],
    );
  }
}

List<ItemProductStory> listItemProductStory = List.generate(10,
    (index) => ItemProductStory(listSmartPhone[index], listImageUser[index]));
