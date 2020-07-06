import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

class RYThreePartiesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 130.w),
            child: _LoginIconButton(
                "微信登录", "assets/images/login/wechat.png", "#E9F7E7"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.w),
            child: _LoginIconButton(
                "本机一键登录", "assets/images/login/phone-two.png", "#FCE9E9"),
          ),
        ],
      ),
    );
  }

  Widget _LoginIconButton(
      String title, String imageName, String BoxDecorationColor) {
    return ButtonTheme(
      padding: EdgeInsets.only(left: 0),
      child: Container(
        height: 40,
        child: FlatButton(
          onPressed: () {
            print("点击了$title");
          },
          child: Row(
            children: <Widget>[
              Container(
                  width: 60.w,
                  height: 60.w,
                  decoration: BoxDecoration(
                    color: HexColor(BoxDecorationColor),
                    borderRadius: BorderRadius.circular(30.w),
                  ),
                  child: Center(
                    child: Image.asset(
                      imageName,
                      width: 35.w,
                    ),
                  )),
              SizedBox(width: 10.w,),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
