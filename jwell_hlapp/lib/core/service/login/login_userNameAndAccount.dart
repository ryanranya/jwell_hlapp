import 'package:jwell_hlapp/core/service/http_request.dart';
import 'package:jwell_hlapp/core/viewmodel/login_passwordandaccount_viewmodel.dart';

class LoginWithUserNameAndAccount{

  static Future<LoginPassWordAndAccountViewModel> requestLoginPassWordAndAccount(String userName, String password) async {
    final String _PassswordAndAccountURL = "api/login";
    Map<String, dynamic> params = {"userName":userName,"password":password};
    final result = await HttpRequest.postRequest(_PassswordAndAccountURL,params:params);
    LoginPassWordAndAccountViewModel loginPassWordAndAccountViewModel = LoginPassWordAndAccountViewModel.fromJson(result);
    return loginPassWordAndAccountViewModel;
  }

}