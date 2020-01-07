import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/base_card.dart';

class CardChangan extends BaseCard{
  @override
  BaseCardState createState() => _CardChanganState();
}

class _CardChanganState extends BaseCardState{

  @override
  void initState() {
    bottomTitleColor = Colors.blue;
    super.initState();
  }
  @override
  topContent() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
          color: Color(0xFFFFFCF7),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 10.0),
                  blurRadius: 10
                )
              ]
            ),
            child: Image.network('http://www.devio.org/io/flutter_beauty/changan_book.jpg',
              fit: BoxFit.cover,),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: Color(0xFFF7F3EA),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('长安十二时辰长安十二时辰', style: TextStyle(fontSize: 15,
                        color: Color(0xFF473B25)), maxLines: 1, overflow: TextOverflow.ellipsis,),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('马伯庸', style: TextStyle(fontSize: 13, color: Color(0xFF7D725C))),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Color(0xFFD9BC82), Color(0xFFECD9AE)]
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      child: Text('分享免费领', style: TextStyle(fontSize: 13, color: Color(0xFF4F3B1A)),),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
        mainAxisAlignment: MainAxisAlignment.spaceAround, //垂直均匀分布
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network('http://www.devio.org/io/flutter_beauty/double_quotes.jpg', height: 26, width: 26,),
                Text('揭露历史真相')
              ],
            ),
          ),
          bottomContentTitle('更多免费好书领不停 >')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

}