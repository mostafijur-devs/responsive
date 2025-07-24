import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/screens/responsive/responsive_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024), // desktop reference size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveHome(),
      ),
    );
  }
}




