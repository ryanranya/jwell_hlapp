import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPageInputTextFiledWidget extends StatefulWidget {
  const LoginPageInputTextFiledWidget(
      {Key key,
      this.imageName,
      this.placeholderString,
      this.isShowTextString = false})
      : super(key: key);

  final Icon imageName;
  final String placeholderString;
  final bool isShowTextString;

  @override
  _LoginPageInputTextFiledWidgetState createState() =>
      _LoginPageInputTextFiledWidgetState();
}

class _LoginPageInputTextFiledWidgetState
    extends State<LoginPageInputTextFiledWidget> {
  static Color containerColor = Color(0xFFB5B7BA);

  @override
  Widget build(BuildContext context) {
    print(widget.placeholderString);
    return Container(
      margin: EdgeInsets.only(left: 28.w, right: 28.w),
      height: 96.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48.w),
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
            height: 48.w,
            decoration: BoxDecoration(
              color: Color(0xFFD6D8DB),
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          Expanded(
            child: TextField(
              onChanged: (String text) {
                setState(() {
                  if (text.length >= 1) {
                    containerColor = Color(0xFFE74F4F);
                  } else {
                    containerColor = Color(0xFFB5B7BA);
                  }
                });
              },
              cursorColor: Colors.black26,
              inputFormatters: [
                LengthLimitingTextInputFormatter(11),
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: widget.placeholderString,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}