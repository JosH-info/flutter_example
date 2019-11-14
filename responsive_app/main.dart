import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final orientation=mediaQuery.orientation;
    final size=mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
         title: Text('Flutter responsive layout demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Orientation: $orientation'),
            Text('Size: $size'),
            Container(
              color:Colors.black26,
              width:250,
              height:300,
              child:LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final localWidgetSize=Size(constraints.maxWidth, constraints.maxHeight);
                  return Center(
                    child: Text('this is container: $localWidgetSize')
                  );
                },
              ),
            )
          ],
        )
      )
    );
  }
}
