import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';
import 'package:jwell_hlapp/ui/widgets/home/navigationbar_bigtitle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/ui/widgets/home/searchtextfile_button.dart';

class RYMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            primary: false,
//            取消阴影
            elevation: 0,
            pinned: true,
            backgroundColor: HexColor("#FFFFFF"),
            flexibleSpace: NavigationBarBigTitle(color: HexColor("#FFFFFF"),),
          ),
          SliverFixedExtentList(delegate: SliverChildBuilderDelegate((BuildContext context, int index){
            return HomePageSearchWidget();
          },childCount: 1), itemExtent: 60.h,),
          SliverFixedExtentList(delegate: SliverChildBuilderDelegate((BuildContext context, int index){
            return Text("123123");
          },childCount: 30), itemExtent: 120.h)
        ],
      ),
    );
  }
}
