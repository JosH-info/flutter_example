//Center constraint 속성 확인
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
        body:Container(
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
          color:Colors.yellow,
          child:Center(
            
            child:Container(
              width:100,
              height:100,
              color:Colors.blue,
            )
          )
        )
      )
    );
  }
}
