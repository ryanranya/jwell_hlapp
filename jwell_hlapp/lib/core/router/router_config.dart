
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:jwell_hlapp/core/router/router_login.dart';

class Routes{
  static String root = '/';
//  账号密码登录
  static String psdAndAccountogin = "passwordandaccount_login";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> parmas) {
//        没有页面，就是跳转失败
          debugPrint("没有页面呀卧槽");
          return NODataPage();
        }
    );

    router.define(psdAndAccountogin, handler: psdAndAccountLoginHandler);

  }
}


class NODataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请检查一下路由老弟"),
      ),
      body: Center(
        child: Text(
          "糟糕！跳转页面的出问题了",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
    );
  }
}