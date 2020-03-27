import 'package:flutter/material.dart';
void main() => runApp(MessagePage());
class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(  // 页面头部appbar
          '消息',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center( // 居中显示消息测试
        child: Text(
          '消息列表',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
