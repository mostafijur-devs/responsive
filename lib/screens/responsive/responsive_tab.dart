import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/helper_widgets.dart';
import 'package:responsive_ui/utils/image_list.dart';

class ResponsiveTab extends StatefulWidget {
  const ResponsiveTab({super.key});

  @override
  State<ResponsiveTab> createState() => _ResponsiveTabState();
}

class _ResponsiveTabState extends State<ResponsiveTab> {
  late bool _isLoading;


  @override
  void initState() {
    // TODO: implement initState
    _isLoading = true;
    Future.delayed(Duration(seconds: 3),() {
      setState(() {
        _isLoading = false;
      });
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Taplet view product list')),
      drawer: Drawer(),

      body: _isLoading ? _shimmerTablet() : _tabletScreen(),
    );
  }
}

class _tabletScreen extends StatelessWidget {
  const _tabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.home), onPressed: () {}),
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.add_chart_outlined),
                  onPressed: () {},
                ),
                SizedBox(height: 20),

                IconButton(icon: Icon(Icons.add), onPressed: () {}),
                SizedBox(height: 20),

                IconButton(
                  icon: Icon(Icons.subscriptions_rounded),
                  onPressed: () {},
                ),
                SizedBox(height: 20),

                IconButton(icon: Icon(Icons.person), onPressed: () {}),
              ],
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: productImagesPath.length,
                itemBuilder: (context, index) =>
                    Card(child: Image.asset(productImagesPath[index])),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _shimmerTablet extends StatelessWidget {
  const _shimmerTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  shimmerBox(height: 0, weight: 40),
                  SizedBox(height: 30),
                  shimmerBox(height: 40, weight: 40),

                  SizedBox(height: 30),

                  shimmerBox(height: 40, weight: 40),
                  SizedBox(height: 30),

                  shimmerBox(height: 40, weight: 40),

                  SizedBox(height: 30),
                  shimmerBox(height: 40, weight: 40),
                  SizedBox(height: 30),
                  shimmerBox(height: 40, weight: 40),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: productImagesPath.length,
                itemBuilder: (context, index) => Card(child: shimmerBox()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
