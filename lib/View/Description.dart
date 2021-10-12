import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Description extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return  DescriptionState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class DescriptionState extends State<Description>
{
  bool isOnlick = false;

  @override
  Widget build(BuildContext context) {
    return
     AnimatedContainer(

       duration: Duration(milliseconds: 100),
       width: MediaQuery.of(context).size.width-60,
       height: isOnlick?400:100,
       child: Stack(children: [
          Positioned.fill(


              child: Container(

                child: Text("A widget that scrolls"

                      "Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed"

                      "It's rare to construct a Scrollable directly. Instead, consider ListView or GridView, which combine scrolling, viewporting, and a layout model. To combine layout models (or to use a custom layout mode), consider using CustomScrollView"

                      "The static Scrollable.of and Scrollable.ensureVisible functions are often used to interact with the Scrollable widget inside a ListView or a GridView"

                      "To further customize scrolling behavior with a Scrollable"

                      "You can provide a viewportBuilder to customize the child model. For example, SingleChildScrollView uses a viewport that displays a single box child whereas CustomScrollView uses a Viewport or a ShrinkWrappingViewport, both of which display a list of slivers"

                      "You can provide a custom ScrollController that creates a custom ScrollPosition subclass. For example, PageView uses a PageController, which creates a page-oriented scroll position subclass that keeps the same page visible when the Scrollable resizes."),
              ),
              ),


          Positioned.fill(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isOnlick = !isOnlick;
                });
              },
              child:
                Container(
                  decoration: BoxDecoration(
                      gradient:isOnlick?null: LinearGradient(

                          begin: Alignment.topCenter,end: Alignment.bottomCenter,
                          colors: [Colors.white12,Colors.white])
                  ),child: Stack(children:[Positioned(bottom: 0,left: MediaQuery.of(context).size.width/2-50,
                    child:isOnlick?Text(""): Icon(Icons.keyboard_arrow_down_sharp,size: 40,))
                ] ,
                 ),
                )
                ,),
            ),

        ],),
     )
    ;

    // TODO: implement build
    throw UnimplementedError();
  }
}