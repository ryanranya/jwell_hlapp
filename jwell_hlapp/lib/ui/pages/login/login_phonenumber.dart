import 'package:flutter/material.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_inputtextfiled.dart';
import 'package:jwell_hlapp/ui/widgets/login/loginpage_register_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RYLoginPhoneNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          LoginPageRegisterTitleWidget(),
          SizedBox(height: 100.w),
          LoginPageInputTextFiledWidget(
          placeholderString: "请输入电话号码",
            imageName: Icon(Icons.phone_iphone,size: 20,color: Color(0xFFB5B7BA),),
          ),
        ],
      ),
    );
  }
}
