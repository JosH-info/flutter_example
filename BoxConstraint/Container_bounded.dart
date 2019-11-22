import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//main function의 주석을 풀어가면서 테스트 하세요.
//Container constraint 예제, constrint(minWidth=300,minHeight=300,maxWidth=400, maxHeight=400) 가 주어진 상황:  
void main(){
    debugPaintSizeEnabled = true; 
    //runApp(MyApp1());//1) Container size=None, No child, 결론: Container size=(400,400)  
    //runApp(MyApp2()); //2) Container size=(200,200),No chid, 결론:Container size=(300,300)  
    //runApp(MyApp3()); //3) Container size=(350,350), child size=(200,200), 결론: Container size=(350,350)  
    //runApp(MyApp4()); //4) Container size=(320,320), child size=(350,350), 결론: Container size=(320,320)  
    //runApp(MyApp5()); //5) Container size=None, child size=(350,350), 결론: Container size=(350,350)  
    //runApp(MyApp6()); //6) Container size=(500,500), child size=(500,500), 결론: Container size=(400,400)  
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:500,
            height:500,
            child:Text('This string would be longger than 500 pixel, this should be longger, let`s check')
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:320,
            height:320,
            child:Text('This string would be longer than 320 pixel. let`s check a size')
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
            width:350,
            height:350,
            child:Text('less than 350')
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
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
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minWidth: 300,
            minHeight: 300
          ),
          color:Colors.yellow,
          child:Container(//최종적으로 size를 측정하는 container 
            color:Colors.blue,
          )
        )
      )
    );
  }
}

