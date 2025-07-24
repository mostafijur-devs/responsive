import 'package:flutter/material.dart';
import 'package:responsive_ui/screens/responsive/responsive_desktop.dart';
import 'package:responsive_ui/screens/responsive/responsive_layout.dart';
import 'package:responsive_ui/screens/responsive/responsive_phone.dart';
import 'package:responsive_ui/screens/responsive/responsive_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final currentWight = MediaQuery.of(context).size.width;
    // Color backbround (currentWight){
    //   if ( currentWight < 600){
    //     return Colors.red;
    //   }
    //   else if ( currentWight < 900){
    //     return Colors.blue;
    //   }
    //   return Colors.green;
    // }
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: ResponsivePhone(),
        tapBody: ResponsiveTab(),
        desktopBody: ResponsiveDesktop(),
      ),
    );
  }
}
