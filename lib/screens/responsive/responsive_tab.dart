import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/image_list.dart';

class ResponsiveTab extends StatelessWidget {
  const ResponsiveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Taplet view product list')),
      drawer: Drawer(),

      body: ListView(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(icon: Icon(Icons.home), onPressed: () {}),
                  SizedBox(height: 20,),
                  IconButton(
                    icon: Icon(Icons.add_chart_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(height: 20,),

                  IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  SizedBox(height: 20,),

                  IconButton(
                    icon: Icon(Icons.subscriptions_rounded),
                    onPressed: () {},
                  ),
                  SizedBox(height: 20,),

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
                  itemBuilder: (context, index) => Card(
                    child: Image.asset(productImagesPath[index]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
