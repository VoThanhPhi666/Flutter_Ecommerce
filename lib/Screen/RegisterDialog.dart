import 'package:ecommerce_application/Screen/LoginPage.dart';
import 'package:ecommerce_application/View/CustomTextField.dart';
import 'package:flutter/material.dart';

class RegisterDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterDialogState();
  }
}

class RegisterDialogState extends State<RegisterDialog> {
  bool isRegisting = false;
  bool isInValid = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width * 3 / 4,
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                    MediaQuery.of(context).size.height * 1 / 30,
                    "Email or Phone",
                    Icon(Icons.person),
                    Icon(Icons.remove_red_eye_outlined),
                    false),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  height: isInValid ? 20 : 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Email or Phone invalid!",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: MediaQuery.of(context).size.height / 50,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CustomTextField(
                      MediaQuery.of(context).size.height * 1 / 30,
                      "Password",
                      Icon(Icons.lock_outline_rounded),
                      Icon(Icons.remove_red_eye_outlined),
                      true),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CustomTextField(
                      MediaQuery.of(context).size.height * 1 / 40,
                      "Confirm Password",
                      Icon(Icons.lock_outline_rounded),
                      Icon(Icons.remove_red_eye_outlined),
                      true),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  height: isInValid ? 20 : 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Password invalid!",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: MediaQuery.of(context).size.height / 50,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.all(5),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            isInValid = !isInValid;
                            isRegisting = !isRegisting;
                          });
                        },
                        child: Center(
                            child: isRegisting
                                ? Container(
                                    child: CircularProgressIndicator(),
                                  )
                                : Text(
                                    "Register",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                1 /
                                                30),
                                  ))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
