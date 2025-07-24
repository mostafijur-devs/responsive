import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/screens/responsive/responsive_desktop.dart';
import 'package:responsive_ui/screens/responsive/responsive_phone.dart';
import 'package:responsive_ui/screens/responsive/responsive_tab.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;

    if (width < 600) {
      // 📱 মোবাইল UI
      return ResponsivePhone();
    } else if (width < 1024) {
      // 📟 ট্যাবলেট UI
      return ResponsiveTab();
    } else {
      // 💻 ডেস্কটপ UI
      return ResponsiveDesktop();
    }
  }
}
