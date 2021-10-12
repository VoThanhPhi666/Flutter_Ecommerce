import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  bool hasSuffix;
  double textSize;
  Icon prefix;
  Icon suffix;
  late String value;
  String hinttext;
  CustomTextField(
      this.textSize, this.hinttext, this.prefix, this.suffix, this.hasSuffix);
  @override
  State<StatefulWidget> createState() {
    return CustomTextFieldState();
  }
}

class CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: MediaQuery.of(context).size.width * 8 / 10,
        height: MediaQuery.of(context).size.height / 10,
        child: Center(
          child: TextField(
            controller: controller,
            onChanged: (value) {
              setState(() {
                widget.value = value;
              });
            },
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 1 / 25),
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: widget.textSize),
                prefixIcon: widget.prefix,
                suffix: widget.hasSuffix == true
                    ? IconButton(onPressed: null, icon: widget.suffix)
                    : null,
                hintText: widget.hinttext,
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
