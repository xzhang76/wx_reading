import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/base_card.dart';

///分享得联名卡
class CardShare extends BaseCard {
  @override
  BaseCardState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  void initState() {
    mainTitle = '分享得联名卡';
    subMainTitle = '第19期';
    subTitle = '分享给朋友最多可获得12天无限卡';
    subTitleColor = Color(0xFFB99444);
    bottomTitleColor = Colors.grey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  bottomContent() {
    //返回自己的实现
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(top: 20),
          color: Color(0xFFF6F7F9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Image.network(
                        'http://www.devio.org/io/flutter_beauty/card_list.png')),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: bottomContentTitle('29876678人 参加活动'),
              )
            ],
          )),
    );
  }
}
