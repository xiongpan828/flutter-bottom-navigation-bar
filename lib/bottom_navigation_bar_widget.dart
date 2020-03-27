import 'package:flutter/material.dart';
import 'pages/message_page.dart';
import 'pages/people_page.dart';
import 'pages/language_page.dart';
class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final BottomNavigationBarColor = Colors.lightGreen; // 定义颜色，方便下面实现调用
  int _pageIndex = 0;     // 定义私有的按钮索引默认是0代表第一个按钮
  // 定义一个List用于存放这三个子页面
  List<Widget> widgetList = List();   // 因为Flutter一切皆为Widget，所以list返回widget
  @override
  void initState(){ // 覆写父类State的initState()方法
    widgetList
      ..add(MessagePage())      // 使用..add 是设计模式中的建造者模式，谁调用返回他的类型
      ..add(PeoplePage())
      ..add(LanguagePage());
      super.initState();      // 因为是无参构造，通过super()调用父类的的方法
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [  // 底部按钮有三个，看成一个数组，下面就分别定义三个数组内实现
          BottomNavigationBarItem(  // 第一个按钮
            icon: Icon( // 底部按钮上面的图标
              Icons.message,
              color: BottomNavigationBarColor,
            ),
            title: Text(  // 底部按钮下面的文字
              '消息',
              style: TextStyle(
                color: BottomNavigationBarColor
              ),
            )
          ),
          BottomNavigationBarItem(  // 第二个按钮
              icon: Icon( // 底部按钮上面的图标
                Icons.people,
                color: BottomNavigationBarColor,
              ),
              title: Text(  // 底部按钮下面的文字
                '联系人',
                style: TextStyle(
                    color: BottomNavigationBarColor
                ),
              )
          ),
          BottomNavigationBarItem(  // 第三个按钮
              icon: Icon( // 底部按钮上面的图标
                Icons.language,
                color: BottomNavigationBarColor,
              ),
              title: Text(  // 底部按钮下面的文字
                '更多',
                style: TextStyle(
                    color: BottomNavigationBarColor
                ),
              )
          ),
        ],
        currentIndex: _pageIndex,   // 代表那个按钮选中产生动画
        onTap: (int index){    // BottomNavigationBar里面的点击事件
          setState(() {
            _pageIndex = index;   // 把系统索引给刚才定义的私有局部变量
          });
        },
        type: BottomNavigationBarType.shifting, // 按钮动画
      ),
    );  // 返回脚手架，里面有很多widget格式可以直接用

  }
}
