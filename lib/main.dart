import 'package:flutter/material.dart';
import 'bottom_navigation_bar_widget.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '底部按钮实战',
      theme: ThemeData.light(), // 亮色  dark()暗黑色系(黑夜模式？)
      home: BottomNavigationBarWidget(),  // 自定义类
    );
  }
}