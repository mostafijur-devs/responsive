import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/colors.dart';

class AppbarScreen extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppbarScreen({Key? key})
    : preferredSize = const Size.fromHeight(60.0),
      super(key: key);

  // @override
  // // TODO: implement preferredSiz;
  // final preferredSize = const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColors,
      leading: TextButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset('assets/images/utils/Menu.png'),
      ),
      centerTitle: true,
      title: Image.asset('assets/images/utils/Logo.png'),
      actions: [
        TextButton(
          onPressed: () {

          },
          child: Image.asset('assets/images/utils/Search.png'),
        ),
        TextButton(
          onPressed: () {},
          child: Image.asset('assets/images/utils/shopping bag.png'),
        ),
      ],
    );
  }
}
