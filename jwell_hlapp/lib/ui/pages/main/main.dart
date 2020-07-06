import 'package:flutter/material.dart';
import 'package:jwell_hlapp/ui/pages/main/initialize_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RYMainScreen extends StatefulWidget {

  @override
  _RYMainScreenState createState() => _RYMainScreenState();
}

class _RYMainScreenState extends State<RYMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
//    初始化屏幕适配
    ScreenUtil.init();
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(

        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Color(0xFFE74F4F),
        unselectedItemColor: Color(0xFF65686F),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
