

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwell_hlapp/ui/pages/login/passwordandaccount_login.dart';

Handler psdAndAccountLoginHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
    return RYPassWordAndAccountLoginPage();
  }
);