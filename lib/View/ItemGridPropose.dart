import 'package:ecommerce_application/Screen/DetailProposePage.dart';
import 'package:flutter/material.dart';

class ItemGridPropose extends StatelessWidget {
  String name;
  int price;
  int? sale;
  String url;
  ItemGridPropose(this.name, this.url, this.price, {this.sale});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailProposePage(this.url, this.name, this.price);
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    url,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2 - 20,
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
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic)),
                            ),
                          ),
                        )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Opacity(
                      opacity: 0.8,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                            child: Text(
                          "$price vnd",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height / 40),
                        )),
                      ),
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: MediaQuery.of(context).size.height / 42),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
