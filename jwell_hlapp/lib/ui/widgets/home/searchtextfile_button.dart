
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

class HomePageSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.w,right: 30.w),
      width: ScreenUtil.screenWidth,
      height: 60.h,
      decoration: BoxDecoration(
          color: HexColor("#F5F5F6"),
          borderRadius: BorderRadius.circular(30.h)
      ),
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Image.asset("assets/images/home/home_search.png",width: 30.w,height: 30.w,)),
          Container(
            margin: EdgeInsets.only(left: 20.w),
            child: Text("搜索",style: TextStyle(
              color: HexColor("#B5B7BA"),
              fontSize: 13,
            ),),
          )
        ],
      ),
    );
  }
}


