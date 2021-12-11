import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home/home_page.dart';
import 'package:flutter_ui/screens/widget_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: HomePage(),
    );
  }
}
