import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

typedef PasswordAndAccountClickBack = void Function(String text);
typedef RegisterButtonClickBack = void Function(String text);
typedef ForgotPasswordClickBack = void Function(String text);

class AccountAndPasswordWidget extends StatelessWidget {

  PasswordAndAccountClickBack passwordAndAccountClickBackonTap;
  RegisterButtonClickBack registerButtonClickBackonTap;
  ForgotPasswordClickBack forgotPasswordClickBackonTap;
  AccountAndPasswordWidget({
    Key key,
    this.loginTitleString,
    this.passwordAndAccountClickBackonTap,
    this.registerButtonClickBackonTap,
    this.forgotPasswordClickBackonTap,
}): super(key: key);

  final String loginTitleString;

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
      height: 48.h,
      margin: EdgeInsets.only(top: 20.h),
      child: loginTitleString == "短信验证码登录"?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    passwordAndAccountClickBackonTap(loginTitleString);
                  },
                  child: Text(
                    loginTitleString,
                    style: TextStyle(
                      color: HexColor("#E74F4F"),
                      fontSize: 13,
                    ),
                  )),
              FlatButton(
                  onPressed: () {
                    forgotPasswordClickBackonTap("忘记密码");
                  },
                  child: Text(
                    "忘记密码?",
                    style: TextStyle(
                      color: HexColor("#65686F"),
                      fontSize: 13,
                    ),
                  )),
            ],
          ) : FlatButton(
          onPressed: () {
            passwordAndAccountClickBackonTap(loginTitleString);
          },
          child: Text(
            loginTitleString,
            style: TextStyle(
              color: HexColor("#E74F4F"),
              fontSize: 13,
            ),
          )),
    );
  }

  Widget RegisterButton() {
    return Container(
      height: 48.h,
      margin: EdgeInsets.only(top: 20.h),
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
