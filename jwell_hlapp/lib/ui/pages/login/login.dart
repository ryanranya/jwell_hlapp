import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/ui/pages/login/login_phonenumber.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_inputtextfiled.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_register_title.dart';

class RYLoginScreen extends StatefulWidget {
  @override
  _RYLoginScreenState createState() => _RYLoginScreenState();
}

class _RYLoginScreenState extends State<RYLoginScreen> {
  @override
  Widget build(BuildContext context) {
    //    初始化屏幕适配
    ScreenUtil.init();
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Image.asset(
              'assets/images/login/bg.png',
              width: double.infinity,
              height: 1334.h,
            ),
            Positioned(
              child: RYLoginPhoneNumberWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
