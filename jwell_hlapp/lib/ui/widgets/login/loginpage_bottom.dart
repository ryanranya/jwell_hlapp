
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';
class RYLoginPageBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 80.w,right: 80.w),
            child: Row(
              children: <Widget>[
                lineWidget(),
                Container(
                  margin: EdgeInsets.only(left: 22.w,right: 22.w),
                  child: Text('海川旗下产品使用统一账号',style: TextStyle(color: HexColor("#B5B7BA"),fontSize: 11),),
                ),
                lineWidget(),
              ],
            ),
          ),
          SizedBox(height: 40.h,),
          Container(
            margin: EdgeInsets.only(left: 80.w,right: 90.w),
            child: Row(
//              主轴上平分
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/images/login/logo-hailuo.png'),
                Image.asset('assets/images/login/logo-haichuan.png'),
                Image.asset('assets/images/login/logo-kaifang.png'),
                Image.asset('assets/images/login/logo-youyu.png'),
                Image.asset('assets/images/login/logo-cangchu.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget lineWidget({double distance}){
    return Container(
      color: HexColor("#B5B7BA"),
      height: 1.w,
      width: 130.w,
    );
  }
}
