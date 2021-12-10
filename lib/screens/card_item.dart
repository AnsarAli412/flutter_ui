import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.network(
              "https://s3.envato.com/files/195496683/India-Map-States-Colored.jpg",
              height: 100,
              width: 60,
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("India"),
                      Text("New Dehli"),
                      Text("India is My Heart")
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                Align(
                  alignment: FractionalOffset.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_outline),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.remove,
                            size: 10,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.add,
                            size: 10,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
