import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tapBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tapBody,
    required this.desktopBody,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
     MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
     final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return desktopBody;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tapBody != null) {
      return tapBody!;
    }
    // Or less then that we called it mobile
    else {
      return mobileBody;
    }



    //   LayoutBuilder(
    //   builder: (context, constraints) {
    //     if (constraints.maxWidth < 850) {
    //       return mobileBody;
    //     } else if (constraints.maxWidth >= 850 && constraints.maxWidth < 1100) {
    //       return tapBody;
    //     } else {
    //       return desktopBody;
    //     }
    //   },
    // );
  }
}
