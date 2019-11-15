import 'package:flutter/material.dart';

class OrientationDemo extends StatefulWidget {
  @override
  _OrientationDemoState createState() => _OrientationDemoState();
}

class _OrientationDemoState extends State<OrientationDemo> {
  var name = "[평범]";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Orientation example')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  Widget _buildVerticalLayout() {
    return Column(
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Icon(
              Icons.account_circle,
              size: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 32.0),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black38,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Center(child:Text(' $index')),
                );
              },
            )
          )
        ],
      );
  }

  Widget _buildHorizontalLayout() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Icon(
                    Icons.account_circle,
                    size: 100.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 32.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black38,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Center(child:Text(' $index')),
                );
              },
            )
          ),
        ],
      ),
    );
  }
}
