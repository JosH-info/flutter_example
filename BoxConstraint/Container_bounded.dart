import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//main function의 주석을 풀어가면서 테스트 하세요.

void main(){
  debugPaintSizeEnabled = true; 
  runApp(MyApp8());
  //runApp(MyApp7());
  //runApp(MyApp6());
  //runApp(MyApp5());
  //runApp(MyApp4());
  //runApp(MyApp3());
  //runApp(MyApp2());
  //runApp(MyApp1());
}


final boxconstraint=BoxConstraints(
  maxHeight: 400,
  maxWidth: 400,
  minWidth: 300,
  minHeight: 300
);


class MyApp8 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:200,
            height:200,
            child:Text('This string would be longer than 500. let`s check a constraint rule and a widget size.')
          )
        )
      )
    );
  }
}

class MyApp7 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:300,
            height:300,
            child:Text('This string would be longer than 500. let`s check a constraint rule and a widget size.')
          )
        )
      )
    );
  }
}


class MyApp6 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:500,
            height:500,
            child:Text('This string would be longer than 500. let`s check a constraint rule and a widget size.')
          )
        )
      )
    );
  }
}

class MyApp5 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            child:Text('This string would be longer than 300 less than 400, let`s check')
          )
        )
      )
    );
  }
}
class MyApp4 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:320,
            height:320,
            child:Text('This string would be longer than 320 pixel. let`s check a size')
            //child:Container(width:350,height:350)
          )
        )
      )
    );
  }
}

class MyApp3 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:350,
            height:350,
            child:Text('This string length is less than 350')
          )
        )
      )
    );
  }
}

class MyApp2 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:200,
            height:200
          )
        )
      )
    );
  }
}

class MyApp1 extends StatelessWidget {
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
          constraints: boxconstraint,
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
          )
        )
      )
    );
  }
}

