import 'package:flutter/material.dart';
import '../addressbook/addressbook.dart';
import '../message/message.dart';
import '../mine/mine.dart';
import '../workbench/workbench.dart';

final List<Widget> pages = [
  RYMessageScreen(),
  RYAddressBookScreen(),
  RYWorkbench(),
  RYMine()
];

final double iconSizeWithWidth = 20;

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      title: Text('消息'),
      icon: Image.asset(
        'assets/images/tabbar/message_d.png',
        width: iconSizeWithWidth,
        fit: BoxFit.fitHeight,
        gaplessPlayback: true,
      ),
    activeIcon: Image.asset(
      'assets/images/tabbar/message_s.png',
      width: iconSizeWithWidth,
      gaplessPlayback: true,
    )
  ),
  BottomNavigationBarItem(
      title: Text('通讯录'),
      icon: Image.asset(
        'assets/images/tabbar/addressbook_d.png',
        width: iconSizeWithWidth,
        gaplessPlayback: true,
      ),
      activeIcon: Image.asset(
        'assets/images/tabbar/addressbook_s.png',
        width: iconSizeWithWidth,
        gaplessPlayback: true,
      ),
  ),
  BottomNavigationBarItem(
      title: Text('工作台'),
      icon: Image.asset(
        'assets/images/tabbar/workbench_d.png',
        width: iconSizeWithWidth,
        gaplessPlayback: true,
      ),
      activeIcon: Image.asset(
        'assets/images/tabbar/workbench_s.png',
        width: iconSizeWithWidth,
        gaplessPlayback: true,
      ),
  ),
  BottomNavigationBarItem(
    title: Text('我的'),
    icon: Image.asset(
      'assets/images/tabbar/mine_d.png',
      width: iconSizeWithWidth,
      gaplessPlayback: true,
    ),
    activeIcon: Image.asset(
      'assets/images/tabbar/mine_s.png',
      width: iconSizeWithWidth,
      gaplessPlayback: true,
    ),
  ),
];
