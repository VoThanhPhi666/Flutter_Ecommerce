import 'package:ecommerce_application/View/ContainerChart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.1, 0.6, 1],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple,
                      Colors.blue.shade600,
                      Colors.black54
                    ])),
            child: Opacity(
              opacity: 0.2,
              child: CustomPaint(
                painter: Deco(),
              ),
            ),
          )),
          Positioned(
            top: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.width / 5,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("lib/Asset/Images/avtphi.jpg"),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Text("Thành Phi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height / 55)),
                    ),
                    ContainerChart()
                  ],
                )),
          )
        ],
      ),
    ));
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Deco extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect =
        Rect.fromCenter(center: Offset(0, 600), width: 600, height: 700);
    Paint paint = Paint()..color = Colors.purple;

    // TODO: implement paint
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
