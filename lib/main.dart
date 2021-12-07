import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        body: Center(
          child: myContainer(),
        ),
      ),
    );
  }

  Container myContainer(){
    return Container(
        height: double.infinity,
        width: 100,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 1,color: Colors.deepPurpleAccent),
                bottom: BorderSide(width: 2,color: Colors.purpleAccent),
                left: BorderSide(width: 3,color: Colors.indigo),
                right: BorderSide(width: 4,color: Colors.lightBlueAccent)
            )
        ),
        child:Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1,color: Colors.deepPurpleAccent),
                    bottom: BorderSide(width: 2,color: Colors.purpleAccent),
                    left: BorderSide(width: 3,color: Colors.indigo),
                    right: BorderSide(width: 4,color: Colors.lightBlueAccent)
                )
            ), 
          ),
        )
    );
  }
}
