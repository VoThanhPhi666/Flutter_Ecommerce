import 'package:ecommerce_application/View/Avatar.dart';
import 'package:ecommerce_application/View/CommentChild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Comment extends StatefulWidget
{

  Comment(this.name,this.comment,this.dateTime,{this.listChild});
  List<CommentChild>? listChild;
  String name;
  String comment;
  String dateTime;
  @override
  State<StatefulWidget> createState() {
    return CommentState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class CommentState extends State<Comment>
{

  @override
  Widget build(BuildContext context) {
    widget.listChild = [
      CommentChild("Alibala","Okela","10-10-2021"),
      CommentChild("Olocala","Umpracico","10-10-2021"),
    ];
    return Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5),
    child: Container(
      padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              SizedBox(height: MediaQuery.of(context).size.height/20,
                  child: CircleAvatar(backgroundImage: AssetImage("lib/Asset/Images/avtphi.jpg"),)),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 4),
                      child: Text(widget.name,
                        style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height/50,
                        ),)),
                  Text(" ${widget.dateTime}",style: TextStyle(color: Colors.grey,fontSize:MediaQuery.of(context).size.height/60))
                ],
              ),

            ],),

            Padding(padding: EdgeInsets.symmetric(vertical: 2)),
            Row(
              children: [
                Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30)),
                child: Text(widget.comment,
                style: TextStyle(fontSize:MediaQuery.of(context).size.height/60),
                ))
              ],
            ),
          buildChild(),
           Divider(thickness: 2,endIndent: 100,),

          ],
        ),
      
    ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  Column buildChild(){
    return Column(
      children: widget.listChild!
    );
  }
}