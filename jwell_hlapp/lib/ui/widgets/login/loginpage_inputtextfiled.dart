import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

typedef void LoginTextFieldCallBack(String content);

class LoginPageInputTextFiledWidget extends StatefulWidget {
  const LoginPageInputTextFiledWidget({
    Key key,
    this.imageName,
    this.placeholderString,
    this.isShowDeleteIcon,
    this.filedTextCallBack,
    this.obscureText,
  }) : super(key: key);

  final Icon imageName;
  final String placeholderString;
  final bool isShowDeleteIcon;
  final LoginTextFieldCallBack filedTextCallBack;
  final bool obscureText;
  @override
  _LoginPageInputTextFiledWidgetState createState() =>
      _LoginPageInputTextFiledWidgetState();
}

class _LoginPageInputTextFiledWidgetState
    extends State<LoginPageInputTextFiledWidget> {
  TextEditingController _textController = TextEditingController();
  static Color containerColor = HexColor("#B5B7BA");
  bool _hasdeleteIcon = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    @override
//    void setState(fn) {
//      // TODO: implement setState
//      super.setState(fn);
//      _textController.addListener(() {
//        if (focusNode.hasFocus){
//          print(focusNode.hasFocus);
//          containerColor = HexColor("#E74F4F");
//        }else{
//          print(focusNode.hasFocus);
//          containerColor = HexColor("#B5B7BA");
//        }
//      });
//    }
//  _textController.addListener(() {
//    setState(() {
//      if (focusNode.hasFocus){
//        containerColor = HexColor("#E74F4F");
//      }else{
//        containerColor = HexColor("#B5B7BA");
//      }
//    });
//  });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 28.w, right: 28.w),
      height: 96.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48.h),
        border: Border.all(
          width: 1,
          color: containerColor,
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 42.w),
            child: Center(
              child: widget.imageName,
            ),
          ),
          SizedBox(width: 20.w),
          Container(
            width: 2.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: HexColor("#D6D8DB"),
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          Expanded(
            child: TextField(
//              focusNode: focusNode,
              obscureText: widget.obscureText,
              controller: _textController,
              onChanged: (String text) {
//                把输入的内容传递出去
                setState(() {
                  _hasdeleteIcon = (_textController.text.isNotEmpty);
                  widget.filedTextCallBack(text);
                });
              },
              cursorColor: Colors.black26,
              inputFormatters: [
                LengthLimitingTextInputFormatter(11),
              ],
//              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: widget.placeholderString,
                border: InputBorder.none,
                suffixIcon: _hasdeleteIcon
                    ? Container(
                        width: 20.w,
                        height: 20.w,
                        child: IconButton(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0),
                          iconSize: 18,
                          icon: Icon(
                            Icons.cancel,
                            color: HexColor("#D6D8DB"),
                          ),
                          onPressed: () {
                            setState(() {
                              widget.filedTextCallBack("");
                              _textController.text = "";
                              _hasdeleteIcon = _textController.text.isNotEmpty;
                            });
                          },
                        ),
                      )
                    : Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
