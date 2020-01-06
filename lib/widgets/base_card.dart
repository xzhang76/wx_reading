import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  String mainTitle = '';
  String subMainTitle;
  String subTitleText = '';
  Color subTitleColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            topContent(),
            bottomContent()
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 26, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(mainTitle, style: TextStyle(fontSize: 22, color: Colors.black)),
              Text(subMainTitle != null ? ' / $subMainTitle' : '', style: TextStyle(fontSize: 15, color: Colors.blueGrey),)
            ],
          ),
          _subTitle(subTitleText),
        ],
      ),
    );
  }



  bottomContent() {
    return Container();
  }

  _subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(title, style: TextStyle(fontSize: 11, color: subTitleColor)),
    );
  }
}
