import 'package:ecommerce_application/View/Comment.dart';
import 'package:ecommerce_application/View/CommentContainer.dart';
import 'package:ecommerce_application/View/Description.dart';
import 'package:ecommerce_application/View/ProposeInDetail.dart';
import 'package:flutter/material.dart';

class DetailProposePage extends StatefulWidget {
  int price;
  String url;
  String name;
  DetailProposePage(this.url, this.name, this.price);
  @override
  State<StatefulWidget> createState() {
    return DetailProposePageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class DetailProposePageState extends State<DetailProposePage>
    with TickerProviderStateMixin {
  late ScrollController scrollController;
  late AnimationController animationController;

  late Animation<double> animationFade;

  @override
  void initState() {
    int i;
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    animationFade = Tween(begin: 0.0, end: 1.0).animate(animationController);
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels < 140)
        animationController.value = 0.0;
      if (scrollController.position.pixels >= 140 &&
          scrollController.position.pixels < 150)
        animationController.value = 0.2;
      if (scrollController.position.pixels >= 150 &&
          scrollController.position.pixels < 160)
        animationController.value = 0.4;
      if (scrollController.position.pixels >= 160 &&
          scrollController.position.pixels < 170)
        animationController.value = 0.6;
      if (scrollController.position.pixels >= 170 &&
          scrollController.position.pixels < 180)
        animationController.value = 0.8;
      if (scrollController.position.pixels >= 180)
        animationController.value = 1.0;
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(widget.url,
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      fit: BoxFit.cover),
                                  Positioned(
                                      right: 0,
                                      bottom: 3,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                        ],
                                      )),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${widget.price} VND",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              25),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Center(
                                            child: Text(
                                          "Buy now",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  40),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              25),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 30)),
                              Description(),
                              Padding(padding: EdgeInsets.only(top: 30)),
                              ProposeInDetail("Same Product"),
                              Padding(padding: EdgeInsets.only(top: 30)),
                              ProposeInDetail("Propose"),
                              CommentContainer(
                                listComment: [
                                  Comment("Thành Phi", "Sản phẩm vô cùng ok",
                                      "20-12-2021"),
                                  Comment(
                                      "Solocoma", "eyyo heyy", "20-12-2021"),
                                ],
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_up,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                      onPressed: () {
                                        scrollController.animateTo(0,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.decelerate);
                                      }),
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: FadeTransition(
                      opacity: animationFade,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 15,
                        child: Center(
                          child: Text(widget.name,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 35)),
                        ),
                      ),
                    )),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.arrow_back_ios)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.add_shopping_cart_outlined),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
