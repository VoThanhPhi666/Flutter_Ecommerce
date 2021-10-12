import 'package:ecommerce_application/Screen/DiscoverPage.dart';
import 'package:ecommerce_application/Screen/HomePage.dart';
import 'package:ecommerce_application/Screen/MessagePage.dart';
import 'package:ecommerce_application/Screen/PersonalPage.dart';
import 'package:ecommerce_application/StateManeger/Bloc/DrawerBloc.dart';
import 'package:ecommerce_application/StateManeger/Bloc/LoadingBloc.dart';
import 'package:ecommerce_application/StateManeger/State/DrawerState.dart';
import 'package:ecommerce_application/StateManeger/State/LoadingState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoadingBloc(InitLoadingState())),
        BlocProvider(create: (context) => DrawerBloc(CloseDrawerState()))
      ],
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.redAccent,
          selectedItemColor: Colors.blue[300],
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: listIcon,
        ),
        body: listElements.elementAt(currentIndex),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

List<BottomNavigationBarItem> listIcon = [
  BottomNavigationBarItem(
      label: "Home",
      icon: Icon(
        Icons.home,
      )),
  BottomNavigationBarItem(label: "Message", icon: Icon(Icons.chat)),
  BottomNavigationBarItem(label: "Discover", icon: Icon(Icons.tab)),
  BottomNavigationBarItem(label: "You", icon: Icon(Icons.person)),
];
List<Widget> listElements = [
  HomePage(),
  MessagePage(),
  DiscoverPage(),
  Personal()
];
