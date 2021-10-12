import 'package:ecommerce_application/Screen/DetailProposePage.dart';
import 'package:flutter/material.dart';

class ItemProposeInDetail extends StatelessWidget {
  String name;
  int price;
  int? sale;
  String url;
  ItemProposeInDetail(this.name, this.url, this.price, {this.sale});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  DetailProposePage(this.url,this.name,this.price);
        }));},
        child: Container(
          width: MediaQuery.of(context).size.width / 3 -30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      url,
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 3 -30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  sale == null
                      ? Padding(padding: EdgeInsets.all(0))
                      : Positioned(
                      left: 0,
                      top: 0,
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sale $sale%",
                                style: TextStyle(
                                  fontSize:  MediaQuery.of(context).size.height/70,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic)),
                          ),
                        ),
                      )),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$price",
                    style: TextStyle(

                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height / 65),
                  ),
                  Text(
                    "$name",
                    style: TextStyle(

                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height / 65),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
