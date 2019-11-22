//ListView내의 Card,ListTile constraint 속성 확인
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
    debugPaintSizeEnabled = true; 
    runApp(MyApp()); 
  }
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Box Constraint',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('constraint test'),
        ),
        body:ListView(
          children: <Widget>[
            Card(child: Text('Hello everyone~')),
            ListTile(title: Text('Nice to see you'))
          ],
        )
      )
    );
  }
}


