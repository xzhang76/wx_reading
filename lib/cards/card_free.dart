import 'package:flutter/material.dart';
import 'package:wx_reading/widgets/base_card.dart';

///免费听书馆
class CardFree extends BaseCard{
  @override
  BaseCardState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {'title': '暴力沟通', 'cover': '51VykQqGq9L._SY346_.jpg', 'price': '19.6'},
  {'title': '论中国', 'cover': '41APiBzC41L.jpg', 'price': '36.6'},
  {'title': '饥饿的盛世：乾隆时代的得与失', 'cover': '51M6M87AXOL.jpg', 'price': '15.92'},
  {'title': '焚天之怒第4卷至大结局', 'cover': '51oIE7H5gnL.jpg', 'price': '56.9'},
  {'title': '我就是风口', 'cover': '51vzcX1U1FL.jpg', 'price': '88.8'},
  {'title': '大宋的智慧', 'cover': '517DW6EbhGL.jpg', 'price': '22.8'}
];

class _CardFreeState extends BaseCardState {
  @override
  void initState() {
    mainTitle = '免费听书馆';
    subTitle = '第108期';
    subTitleColor = Colors.grey;
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
          child: Column(
            children: <Widget>[
              Expanded(
                child: _bookList(),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('免费领取', style: TextStyle(fontSize: 13, color: Colors.white),),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

  _bookList() {
    return GridView.count(crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 15,
      childAspectRatio: 0.5,
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item){
        return _buildItem(item);
      }).toList(),
    );
  }

  Widget _buildItem(Map<String, String> item){
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            //指定未定位或部分定位widget的对齐方式
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Text(
                      '原价${item['price']}',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

}