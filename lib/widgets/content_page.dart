import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/page_view_content.dart';

class ContentPage extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  //构造方法
  const ContentPage({Key key, this.onPageChanged}) : super(key: key);
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appBar

        Expanded(
          child: PageView(
            controller: PageController(
              viewportFraction: 0.8
            ),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              PageViewContent(index: 0),
              PageViewContent(index: 1),
              PageViewContent(index: 2),
              PageViewContent(index: 3),
            ],
            onPageChanged: widget.onPageChanged,
          ),
        )
      ],
    );
  }
}
