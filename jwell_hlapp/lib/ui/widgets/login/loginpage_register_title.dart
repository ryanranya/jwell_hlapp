import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPageRegisterTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50.w,),
          FlatButton(
            padding: EdgeInsets.only(left: 550.w),
            onPressed: () {
              print('用户注册');
            },
            child: Text(
              "新用户注册",
              style: TextStyle(fontSize: 15, color: Color(0xFF65686F)),
            ),
          ),
          SizedBox(height: 100.w,),
          Container(
            padding: EdgeInsets.only(left: 28.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "欢迎使用海螺",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold , color: Color(0xFF202328)),
                ),
                SizedBox(height: 30.w,),
                Text(
                  "请使用海螺账号登录",
                  style: TextStyle(fontSize: 14, color: Color(0xFF65686F)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
