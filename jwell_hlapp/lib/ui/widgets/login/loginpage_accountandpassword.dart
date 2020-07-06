import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

typedef PasswordAndAccountClickBack = void Function(String text);
typedef RegisterButtonClickBack = void Function(String text);

class AccountAndPasswordWidget extends StatelessWidget {
  PasswordAndAccountClickBack passwordAndAccountClickBackonTap;
  RegisterButtonClickBack registerButtonClickBackonTap;
  AccountAndPasswordWidget({
   this.passwordAndAccountClickBackonTap,
    this.registerButtonClickBackonTap,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PasswordAndAccount(),
          RegisterButton(),
        ],
      ),
    );
  }
  Widget PasswordAndAccount() {
    return Container(
      height: 60.h,
      margin: EdgeInsets.only(top: 40.h),
      child: FlatButton(
          onPressed: () {
            passwordAndAccountClickBackonTap("账号密码登录");
          },
          child: Text(
            "账号密码登录",
            style: TextStyle(
              color: HexColor("#E74F4F"),
              fontSize: 13,
            ),
          )),
    );
  }

  Widget RegisterButton() {
    return Container(
      height: 60.h,
      child: FlatButton(
        onPressed: () {
          registerButtonClickBackonTap("点击注册");
        },
        child: Text.rich(TextSpan(children: [
          TextSpan(
              text: "还没有账号?点击",
              style: TextStyle(
                color: HexColor("#65686F"),
                fontSize: 13,
              )),
          TextSpan(
              text: "立即注册",
              style: TextStyle(
                color: HexColor("#E74F4F"),
                fontSize: 13,
              ))
        ])),
      ),
    );
  }
}
