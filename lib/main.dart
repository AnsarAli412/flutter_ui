import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     num days = 30;
     String name = "Fluttre";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: Text("Flutter Ui"),),
        body: Center(
          child:Container(
      child: Center(child: Text("$days day of $name"),),
      )
        ),
      ),
    );
  }
}
