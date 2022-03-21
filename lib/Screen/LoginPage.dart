import 'package:ecommerce_application/Screen/MainPage.dart';
import 'package:ecommerce_application/Screen/RegisterDialog.dart';
import 'package:ecommerce_application/View/CustomTextField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  bool isInValid = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.blue),
          // child: Image.asset(
          //   "lib/Asset/Images/background4.png",
          //   fit: BoxFit.cover,
          // ),
        )),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120)),
                color: Colors.white),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3 - 50,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: Hero(
            tag: "/",
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.width / 4,
              child: Center(
                child: Icon(
                  Icons.person_outline,
                  size: 40,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width / 2 -
                (MediaQuery.of(context).size.width * 8 / 10) / 2,
            top: MediaQuery.of(context).size.height / 2 - 50,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                      MediaQuery.of(context).size.height * 1 / 25,
                      "Email or Phone",
                      Icon(Icons.person),
                      Icon(Icons.remove_red_eye_outlined),
                      false),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    height: isInValid ? 20 : 0,
                    child: Row(
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
                        MediaQuery.of(context).size.height * 1 / 25,
                        "Password",
                        Icon(Icons.lock_outline_rounded),
                        Icon(Icons.remove_red_eye_outlined),
                        true),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    height: isInValid ? 20 : 0,
                    child: Row(
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
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "No Account? ",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return RegisterDialog();
                                });
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Text(
                      "Forget account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            });
                          },
                          child: Center(
                              child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height *
                                    1 /
                                    25),
                          ))),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
