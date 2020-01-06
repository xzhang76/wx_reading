import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  String mainTitle = '';
  String subMainTitle;
  String subTitle = '';
  Color bottomTitleColor = Colors.blue;
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
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Text(subMainTitle != null ? ' / $subMainTitle' : '', style: TextStyle(fontSize: 11, color: Colors.blueGrey)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(subTitle, style: TextStyle(fontSize: 11, color: subTitleColor)),
          ),
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  bottomContentTitle(String bottomTitle) {
    return Text(bottomTitle, style: TextStyle(fontSize: 12, color: bottomTitleColor));
  }
}
