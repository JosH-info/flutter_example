import 'package:flutter/material.dart';
import 'package:flutter_adaptive_layouts/MasterDetailPage.dart';
import 'package:flutter_adaptive_layouts/OrientationDemo.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OrientationDemo(),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MasterDetailPage(),
    );
  }
}

