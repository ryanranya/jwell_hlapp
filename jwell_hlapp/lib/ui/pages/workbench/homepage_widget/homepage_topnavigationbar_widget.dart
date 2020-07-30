import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageTopNavigationBar extends StatefulWidget {
  HomePageTopNavigationBar({
    Key key,
    this.title,
  }): super(key: key);

  final String title;

  @override
  _HomePageTopNavigationBarState createState() => _HomePageTopNavigationBarState();
}

class _HomePageTopNavigationBarState extends State<HomePageTopNavigationBar> {
  final double navigationBarHeight = ScreenUtil.statusBarHeight + 44.0;
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
