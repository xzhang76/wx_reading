import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/content_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  final ContentPageController _contentPageController = new ContentPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFEDEEF0), Color(0xFFE6E7E9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: ContentPage(
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          contentPageController: _contentPageController,
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildBottomItem('本周', Icons.folder, 0),
          _buildBottomItem('分享', Icons.explore, 1),
          _buildBottomItem('点赞', Icons.donut_large, 2),
          _buildBottomItem('长安', Icons.person, 3),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          print("onTap, index = $index");
          _contentPageController.animateToPage(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
    ); //Scaffold
  }

  _buildBottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: index == _currentIndex ? _activeColor : _defaultColor),
        ));
  }
}
