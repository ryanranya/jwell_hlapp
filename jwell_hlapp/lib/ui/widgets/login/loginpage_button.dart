import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/core/color/hex_color.dart';

typedef buttonClickBack = void Function(String text);

class LoginButtonWidget extends StatefulWidget {
  LoginButtonWidget({
    Key key,
    @required this.onTap,
    this.buttonString,
    this.isCanClick,
  }):super(key: key);
  final String buttonString;
  final bool isCanClick;
  buttonClickBack onTap;

  @override
  _LoginButtonWidgetState createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      minWidth: 710.w,
      height: 96.h,
      child: Container(
        margin: EdgeInsets.only(left: 28.w, right: 28.w),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48.w),
          ),
          onPressed: widget.isCanClick?(){
            widget.onTap(widget.buttonString);

          }:null,
          disabledColor: Color(0xFFF19595),
          color: HexColor("#E74F4F"),
          child: Text(
            widget.buttonString,
            style: TextStyle(color: HexColor("#FFFFFF"), fontSize: 17),
          ),
        ),
      ),
    );
  }
}
