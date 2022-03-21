import 'dart:ui';

import 'package:ecommerce_application/Screen/LoginPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartPageState();
  }
}

PageController controller = PageController();

class StartPageState extends State<StartPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return listPage[currentindex];
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    2,
                    (index) => Padding(
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                              color: currentindex == index
                                  ? Colors.red
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(40)),
                          height: currentindex == index ? 15 : 10,
                          width: currentindex == index ? 15 : 10,
                          duration: Duration(milliseconds: 200),
                        ),
                        padding: EdgeInsets.only(
                            bottom: 20, top: 20, left: 6, right: 6))),
              )
            ],
          )
        ],
      ),
    );

    // TODO: implement build
    //throw UnimplementedError();
  }
}

List<Widget> listPage = [Page1(), Page2()];

class Page1 extends StatelessWidget {
  const Page1();
  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [Colors.blueAccent, Colors.blueGrey]),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Welcome to",
                style: TextStyle(
                    color: Colors.pink, fontSize: 30, fontFamily: "Lobster")),
            Text("E-Commerce Application",
                style: TextStyle(
                    color: Colors.pink, fontSize: 30, fontFamily: "Lobster"))
          ]),
        ),
      ),
      Positioned(
          top: 0,
          left: 0,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Container(
              child: Image.asset(
                "lib/Asset/Images/background1.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
          )),
      Positioned(
        right: MediaQuery.of(context).size.width / 10,
        bottom: MediaQuery.of(context).size.width / 5,
        child: Hero(
          tag: "/",
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.blue[500],
                borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: TextButton(
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                controller.jumpToPage(1);
              },
            )),
          ),
        ),
      ),
    ]);

    // TODO: implement build
    //throw UnimplementedError();
  }
}

class Page2 extends StatefulWidget {
  State<Page2> createState() => Page2State();
}

class Page2State extends State<Page2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Now let's Login to ",
              style: TextStyle(
                  color: Colors.pink, fontSize: 30, fontFamily: "Lobster"),
            ),
            Text(
              "start use application!",
              style: TextStyle(
                  color: Colors.pink, fontSize: 30, fontFamily: "Lobster"),
            ),
          ],
        )),
        decoration: BoxDecoration(color: Colors.white
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [Colors.blueAccent, Colors.blueGrey]),
            ),
      ),
      Positioned(
        right: MediaQuery.of(context).size.width / 10,
        bottom: MediaQuery.of(context).size.width / 5,
        child: Hero(
          tag: "/",
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.blue[500],
                borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: TextButton(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionsBuilder:
                        (context, animation, animation2, child) {
                      animation = Tween<double>(begin: 0.0, end: 1.0)
                          .animate(animation);
                      return child;
                    },
                    pageBuilder: (context, animation, animation2) {
                      return FadeTransition(
                          opacity: animation, child: LoginPage());
                    }));
              },
            )),
          ),
        ),
      ),
      Positioned(
          top: 0,
          left: 0,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Container(
              child: Image.asset(
                "lib/Asset/Images/background2.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
          )),
    ]);

    // TODO: implement build
    //throw UnimplementedError();
  }
}
