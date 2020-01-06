import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/my_appbar.dart';
import 'package:wx_reading/widgets/page_view_content.dart';

class ContentPage extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;
  //构造方法
  const ContentPage({Key key, this.onPageChanged,
    this.contentPageController}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    if(widget.contentPageController != null) {
      widget.contentPageController._pageController = _pageController;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appBar
        MyAppBar(),
        Expanded(
          child: PageView(
            controller: _pageController,
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

class ContentPageController {
  PageController _pageController;

  void jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }

  void animateToPage(int page) async {
    await _pageController?.animateToPage(page, duration: Duration(microseconds: 500), curve: Curves.easeInOut);
  }
}
