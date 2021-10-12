import 'package:flutter/material.dart';

class ItemNotification extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return ItemNotificationState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class ItemNotificationState extends State<ItemNotification>
{
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(color: Colors.pink.shade100,
            border: Border.all(color: Colors.blueAccent)
        ),
        width: MediaQuery.of(context).size.width,
        child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.height/15,
                        height: MediaQuery.of(context).size.height/15
                        ,child: CircleAvatar(backgroundImage: AssetImage("lib/Asset/Images/avtphi.jpg"),)),
                     Container(
                       decoration: BoxDecoration( color: Colors.blue,
                           borderRadius: BorderRadius.circular(20)),
                       padding: EdgeInsets.all(5),
                       child: Text("Thành Phi",style:TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize:MediaQuery.of(context).size.height/50)),
                     ),

                     Icon(Icons.notifications_active,
                        color: Colors.blue,
                        size: MediaQuery.of(context).size.height/20,),
               ]),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0,top: 4.0),
                    child: Text("11:29  .20-12-2021",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height/55,
                        color: Colors.black45),),
                  )
                ],),
                Row(children: [
                  Expanded (
                    child:Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("est natus enim nihil est dolore omnis voluptatem numquam et omnis"
                          " occaecati quod ullam at voluptatem error expedita pariatur nihil sint"
                          " nostrum voluptatem reiciendis et",style:
                      TextStyle(fontSize:MediaQuery.of(context).size.height/50)
                      ),
                    ),
                  ),
                ],)
              ],
            )



    );
    // TODO: implement build
    throw UnimplementedError();
  }
}