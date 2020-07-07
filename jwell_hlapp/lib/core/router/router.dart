import 'package:flutter/material.dart';
import 'package:jwell_hlapp/core/usershared/user_loginmessage.dart';
import 'package:jwell_hlapp/ui/pages/login/passwordandaccount_login.dart';
import 'package:jwell_hlapp/ui/pages/login/phone_login.dart';
import 'package:jwell_hlapp/ui/pages/main/main.dart';

class RYRouter {
//  static final String initialRoute = RYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routers = {
//    RYMainScreen.routeName: (ctx) => RYMainScreen(),
//    RYLoginScreen.routeName: (ctx) => RYLoginScreen(),
  RYPassWordAndAccountLoginPage.passwordAndAccountRoute: (ctx) => RYPassWordAndAccountLoginPage()
  };

// 可以扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
