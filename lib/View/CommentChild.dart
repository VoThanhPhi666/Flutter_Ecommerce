import 'package:flutter/material.dart';
class CommentChild extends StatelessWidget
{
  String comment;
  String name;
  String dateTime;
  CommentChild(this.name,this.comment,this.dateTime);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,top: 5,right: 5,bottom: 5),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
            child: CircleAvatar(backgroundImage: NetworkImage
              ("https://th.bing.com/th/id/OIP.L8hJwyeNCM-jGm8GxcQb-QHaJM?w=206&h=256&c=7&r=0&o=5&dpr=1.25&pid=1.7"),),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[300],borderRadius: BorderRadius.circular(10)
            ),child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:MediaQuery.of(context).size.height/60),),
                    Text(" $dateTime",style: TextStyle(color: Colors.grey,fontSize:MediaQuery.of(context).size.height/60))
                  ],
                ),
                Text(comment,style: TextStyle(fontSize:MediaQuery.of(context).size.height/60)),
              ],
            ),
          ),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}