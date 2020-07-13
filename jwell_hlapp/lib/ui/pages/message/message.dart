
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jwell_hlapp/ui/widgets/home/navigationbar_bigtitle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwell_hlapp/ui/widgets/home/searchtextfile_button.dart';
class RYMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(ScreenUtil.statusBarHeight);
    print(ScreenUtil.statusBarHeightPx);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            NavigationBarBigTitle(),
            HomePageSearchWidget(),
          ],
        )
      ),
    );
  }
}
