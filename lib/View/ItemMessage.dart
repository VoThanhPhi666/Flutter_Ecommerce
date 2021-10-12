import 'package:flutter/material.dart';

class ItemMessage extends StatelessWidget {
  String userName;
  String path;
  ItemMessage(this.userName, this.path);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.blue.shade200,
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
                height: MediaQuery.of(context).size.width / 7,
                child: CircleAvatar(
                  backgroundImage: AssetImage(path),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 5)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45),
                    ),
                    Text(
                      "08:48  .06-05-2019",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: MediaQuery.of(context).size.height / 50),
                    ),
                    Text(
                      "um ba la la la ba trap,um ba la la la ba trap,",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: MediaQuery.of(context).size.height / 50),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
