import 'package:ecommerce_application/Global.dart';
import 'package:ecommerce_application/Screen/MainPage.dart';
import 'package:ecommerce_application/Screen/StartPage.dart';
import 'package:ecommerce_application/StateManeger/Bloc/LoadingBloc.dart';
import 'package:ecommerce_application/StateManeger/State/LoadingState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your applicationn.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),
    );
  }
}
