import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Avatar extends StatelessWidget {
  String path;
  Avatar(this.path);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.blue, width: 2.0)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(path),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
