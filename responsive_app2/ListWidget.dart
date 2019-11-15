import 'package:flutter/material.dart';

typedef Null ItemSelectedCallback(int value);

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  ListWidget(
    this.count,
    this.onItemSelected,
  );

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black38,
      ),
      itemCount: widget.count,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Center(child:Text('$index')),
          onTap: () {
            widget.onItemSelected(index);
          },
        );
      },
    );
  }
}
