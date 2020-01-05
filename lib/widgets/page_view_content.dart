import 'package:flutter/material.dart';

class PageViewContent extends StatelessWidget {
  final int index;
  static List<Color> _colors = [Colors.blue, Colors.grey, Colors.blueGrey, Colors.redAccent];

  const PageViewContent({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: _colors[index],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
