import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white60
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.blueGrey,
          ),
          Expanded(
            child: Text('长安十二时辰', style: TextStyle(fontSize: 15, color: Colors.blueGrey))
          ),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 10),
            color: Colors.blueGrey,
          ),
          Text('书城', style: TextStyle(fontSize: 13, color: Colors.blueGrey),)
        ],

      ),
    );
  }
}
