import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationBarBigTitle extends StatelessWidget {
  NavigationBarBigTitle({
    Key key,
    this.color,
    this.title,
  }) : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.statusBarHeight + 44,
      width: ScreenUtil.screenWidth,
      child: Container(
        height: 44,
        width: ScreenUtil.screenWidth,
        margin: EdgeInsets.only(top: ScreenUtil.statusBarHeight),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 40.w),
              child: Text(
                "消息",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            )),
            Container(
              margin: EdgeInsets.only(right: 0.w),
              child: ButtonTheme(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0),
                minWidth: 80.w,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
//                    color: Colors.red,
                    onPressed: () {},
                    child: Image.asset(
                      "assets/images/home/home_QR.png",
                      width: 42.w,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.w),
              child: ButtonTheme(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0),
                minWidth: 80.w,
                child: FlatButton(
                    padding: EdgeInsets.all(0),
//                    color: Colors.red,
                    onPressed: () {},
                    child: Image.asset(
                      "assets/images/home/home_phone.png",
                      width: 42.w,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
