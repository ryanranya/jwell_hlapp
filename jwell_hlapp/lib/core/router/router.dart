import 'package:flutter/material.dart';
import 'package:jwell_hlapp/core/usershared/user_loginmessage.dart';
import 'package:jwell_hlapp/ui/pages/login/login.dart';
import 'package:jwell_hlapp/ui/pages/main/main.dart';

class RYRouter {
//  static final String initialRoute = RYMainScreen.routeName;
  static final Map<String, WidgetBuilder> routers = {
//    RYMainScreen.routeName: (ctx) => RYMainScreen(),
//    RYLoginScreen.routeName: (ctx) => RYLoginScreen(),
  };

// 可以扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
