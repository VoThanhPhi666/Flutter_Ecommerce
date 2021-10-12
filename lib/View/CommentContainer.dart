import 'package:ecommerce_application/View/Comment.dart';
import 'package:flutter/material.dart';

class CommentContainer extends StatefulWidget {
  List<Comment>? listComment;
  CommentContainer({this.listComment});
  @override
  State<StatefulWidget> createState() {
    return CommentContainerState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class CommentContainerState extends State<CommentContainer> {
  Column buildComment() {
    return Column(
      children: widget.listComment!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Comment",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width - 30,
                child: buildComment()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Comment", border: InputBorder.none),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
