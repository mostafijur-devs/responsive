import 'package:flutter/material.dart';

class ResponsiveDesktop extends StatelessWidget {
  const ResponsiveDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop  view product list'),
      ),
      drawer: Drawer(),

      body: ListView(),
    );
  }
}
