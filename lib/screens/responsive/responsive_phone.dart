import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/utils/helper_widgets.dart';
import 'package:responsive_ui/utils/image_list.dart';

class ResponsivePhone extends StatefulWidget {
  const ResponsivePhone({super.key});

  @override
  State<ResponsivePhone> createState() => _ResponsivePhoneState();
}

class _ResponsivePhoneState extends State<ResponsivePhone> {
  late bool _isLoading;

  @override
  void initState() {
    // TODO: implement initState
    _isLoading = true;
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone view product list'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.live_tv)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      drawer: Drawer(),
      body: _isLoading ? _ShimmerScreen(): _phoneScreen(),

      //   //
      //   // ListView.builder(
      //   //   itemCount: productImagesPath.length,
      //   //   itemBuilder: (context, index) => Card(
      //   //     elevation: 2,
      //   //     child: Column(children: [
      //   //       Image.asset(productImagesPath[index],height: 250,fit: BoxFit.fill,)]),
      //   //   ),
      //   // ),
      // ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        height: 50.h,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          // height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.add_chart_outlined),
                onPressed: () {},
              ),
              IconButton(icon: Icon(Icons.add), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.subscriptions_rounded),
                onPressed: () {},
              ),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class _phoneScreen extends StatelessWidget {
  const _phoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: productImagesPath.length,
        itemBuilder: (context, index) =>
            Card(child: Image.asset(productImagesPath[index])),
      ),
    );
  }
}

class _ShimmerScreen extends StatelessWidget {
  const _ShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => shimmerBox(),
      ),
    );
  }
}
