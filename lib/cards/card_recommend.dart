import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/base_card.dart';

///本周推荐
class CardRecommend extends BaseCard{
  @override
  BaseCardState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    mainTitle = '本周推荐';
    subTitleText = '送你离开，千里之外';
    subTitleColor = Color(0xFFB99444);
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
        child: Image.network('http://www.devio.org/io/flutter_beauty/card_1.jpg',
        fit: BoxFit.cover,)
      ),
    );
  }

}