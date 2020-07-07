
import 'package:shared_preferences/shared_preferences.dart';

class RYUserLoginMessage{
   static Future getLoginState() async{
      final prefs = await SharedPreferences.getInstance();
      final counter = prefs.getBool('isLogin') ?? false;
       return counter;
   }
}