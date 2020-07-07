import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jwell_hlapp/core/service/login/login_userNameAndAccount.dart';
import 'package:jwell_hlapp/core/viewmodel/login_passwordandaccount_viewmodel.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_accountandpassword.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_bottom.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_button.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_inputtextfiled.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_register_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_threeparties.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RYPassWordAndAccountLoginPage extends StatefulWidget {
  static const String passwordAndAccountRoute = "../login/passwordandaccount_login";
  @override
  _RYPassWordAndAccountLoginPageState createState() =>
      _RYPassWordAndAccountLoginPageState();
}

class _RYPassWordAndAccountLoginPageState
    extends State<RYPassWordAndAccountLoginPage> {
  bool _isAccountlenght = false;
  bool _isPasswordlenght = false;
  String userName = "";
  String passWord = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                placeholderString: "请输入手机号/用户名",
                imageName: Icon(
                  Icons.perm_identity,
                  size: 20,
                  color: Color(0xFFB5B7BA),
                ),
                isShowDeleteIcon: true,
                filedTextCallBack: (content) {
                  userName = content;
                  setState(() {
                    if (content.length > 0) {
                      _isAccountlenght = true;
                    }else{
                      _isAccountlenght = false;
                    }
                  });
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              LoginPageInputTextFiledWidget(
                obscureText: true,
                placeholderString: "请输入密码",
                imageName: Icon(
                  Icons.https,
                  size: 20,
                  color: Color(0xFFB5B7BA),
                ),
                isShowDeleteIcon: true,
                filedTextCallBack: (content) {
                  passWord = content;
                  setState(() {
                    if (content.length > 0){
                      _isPasswordlenght = true;
                    }else{
                      _isPasswordlenght = false;
                    }
                  });
                },
              ),
              SizedBox(height: 40.h,),
              LoginButtonWidget(
                buttonString: "登录",
                onTap: (data) {
                  loginFunc(userName,passWord);

                },
                isCanClick: (_isAccountlenght && _isPasswordlenght) ? true : false,
              ),
              AccountAndPasswordWidget(
                loginTitleString: "短信验证码登录",
                passwordAndAccountClickBackonTap: (titleString) {
                  Navigator.of(context).pop();

                },
                forgotPasswordClickBackonTap: (titleString){
                  print("忘记密码");
                },
                registerButtonClickBackonTap: (titleString) {
                  print(titleString);
                },
              ),
              SizedBox(
                height: 160.h,
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
    );
  }

  void loginFunc(String userName, String password){
    LoginWithUserNameAndAccount.requestLoginPassWordAndAccount(userName, password).then((res){
      print(res.user.userCode);
      seaveUserLoginState(res);
    });
  }

  static Future seaveUserLoginState(LoginPassWordAndAccountViewModel model) async{
    //    登录成功保存登录
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", model.success);
  }

}
