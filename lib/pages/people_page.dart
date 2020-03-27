import 'package:flutter/material.dart';
void main() => runApp(PeoplePage());
class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(  // 页面头部appbar
          '联系人',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.lightGreen
          ),
        ),
      ),
      body: Center( // 居中显示消息测试
        child: Text(
          '联系人',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
