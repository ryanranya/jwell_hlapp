import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jwell_hlapp/core/router/application.dart';
import 'package:jwell_hlapp/core/router/router_config.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_accountandpassword.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_bottom.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_button.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_inputtextfiled.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_register_title.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_threeparties.dart';

class RYLoginScreen extends StatefulWidget {
  @override
  _RYLoginScreenState createState() => _RYLoginScreenState();
}

class _RYLoginScreenState extends State<RYLoginScreen> {
  bool isCanClick = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //    初始化屏幕适配
    ScreenUtil.init();
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: KeyboardDismissOnTap(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login/bg.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LoginPageRegisterTitleWidget(),
                SizedBox(height: 80.h),
                LoginPageInputTextFiledWidget(
                  obscureText: false,
                  placeholderString: "请输入你的手机号码",
                  imageName: Icon(
                    Icons.phone_iphone,
                    size: 20,
                    color: Color(0xFFB5B7BA),
                  ),
                  isShowDeleteIcon: true,
                  filedTextCallBack: (content) {
                    setState(() {
                      if (content.length > 0) {
                        isCanClick = true;
                      } else {
                        isCanClick = false;
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                LoginButtonWidget(
                  buttonString: "下一步",
                  isCanClick: isCanClick,
                  onTap: (buttonTitle) {
                    print("点击了登录");
                  },
                ),
                AccountAndPasswordWidget(
                  loginTitleString: "账号密码登录",
                  passwordAndAccountClickBackonTap: (titleString) {
                    jumpToPasswordAndAccountLogin();
                  },
                  registerButtonClickBackonTap: (titleString) {
                    print(titleString);
                  },
                ),
                SizedBox(
                  height: 280.h,
                ),
                RYThreePartiesWidget(),
                SizedBox(
                  height: 20.h,
                ),
                RYLoginPageBottomWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void jumpToPasswordAndAccountLogin() {
    Application.router.navigateTo(context, Routes.psdAndAccountogin,transition: TransitionType.native);
//  Navigator.of(context).pushNamed(
//      MaterialPageRoute(
//          builder: (ctx){
//            return RYPassWordAndAccountLoginPage();
//          }),);
//    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
//      return RYPassWordAndAccountLoginPage();
//    }));
  }
}
