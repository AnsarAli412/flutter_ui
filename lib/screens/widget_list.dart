import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/wedgets.dart';

class WidgetList extends StatefulWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  _WidgetListState createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Widget List", Colors.purple)
    );
  }
}
