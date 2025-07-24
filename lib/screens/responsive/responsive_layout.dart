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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600){
        return mobileBody;
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1025){
        return tapBody;
      }
      else {
        return desktopBody;
      }

    });
  }
}
