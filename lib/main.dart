import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/wedgets.dart';
import 'package:flutter_ui/screens/widget_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartApp(),
    );
  }
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Flutter Ui", Colors.yellow),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WidgetList())),
      ),
      drawer: Drawer(),
    );
  }
}
