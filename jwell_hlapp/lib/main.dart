import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jwell_hlapp/core/router/router.dart';
import 'package:jwell_hlapp/core/usershared/user_loginmessage.dart';
import 'package:jwell_hlapp/ui/pages/login/login.dart';
import 'package:jwell_hlapp/ui/pages/main/main.dart';
import 'package:jwell_hlapp/ui/shared/app_theme.dart';

void main() {
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '海螺协同',
//      关于主题
      theme: RYAppTheme.norTheme,
//      关于路由
//      initialRoute: RYRouter.initialRoute,
      home: RYUserLoginMessage.isLogin?RYMainScreen():RYLoginScreen(),
      onGenerateRoute: RYRouter.generateRoute,
      onUnknownRoute: RYRouter.unknownRoute,
    );
  }
}