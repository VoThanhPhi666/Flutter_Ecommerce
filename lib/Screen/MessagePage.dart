import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/View/ListViewMessage.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MessagePageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 50),
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 60),
                            hintText: "Search",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: 80,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: TextButton(
                        child: Center(
                            child: Text(
                          "Search",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 60),
                        )),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          10,
                          (index) => ItemRowView(
                              listUserName[index], listImageUser[index])))),
              Divider(
                indent: 20,
                endIndent: 20,
                height: 20,
                thickness: 3,
              ),
              ListViewMessage(),
            ],
          ),
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}

class ItemRowView extends StatelessWidget {
  String userName;
  String path;
  ItemRowView(this.userName, this.path);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.width / 6,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(path),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      height: MediaQuery.of(context).size.width / 30,
                      width: MediaQuery.of(context).size.width / 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 3),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Positioned(
                      bottom: 3,
                      right: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 30,
                        width: MediaQuery.of(context).size.width / 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50)),
                      ))
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: Text(
                      userName,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
