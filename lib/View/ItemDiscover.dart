import 'package:flutter/material.dart';

class ItemDiscover extends StatelessWidget {
  String name;
  String pathUserImage;
  String pathMainImage;

  ItemDiscover(this.pathUserImage, this.name, this.pathMainImage);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 5.0),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MergeSemantics(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 20,
                        height: MediaQuery.of(context).size.height / 20,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(pathUserImage),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45),
                            ),
                          ),
                          Text(
                            "   07:00",
                            style: TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "12/02/2019",
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    "Umbala lalaba Trap",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 50),
                  ),
                )
              ],
            ),
            Container(
              child: Image.asset(
                pathMainImage,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 100,
                      child: Center(
                          child: Text("34",
                              style: TextStyle(color: Colors.black45)))),
                  Container(
                      width: 100,
                      child: Center(
                          child: Text("12",
                              style: TextStyle(color: Colors.black45)))),
                  Container(
                      width: 100,
                      child: Center(
                          child: Text("32",
                              style: TextStyle(color: Colors.black45)))),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Like"),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Comment"),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Share"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 5,
              height: 30,
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
