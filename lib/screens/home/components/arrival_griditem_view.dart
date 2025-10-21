import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/custom_text.dart';
import '../../../utils/image_list.dart';

class ArrivalGriditemView extends StatelessWidget {
  const ArrivalGriditemView({super.key,this.crossAxisCount=2,this.childAspectRatio=1});
 final int crossAxisCount;
 final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio:childAspectRatio,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),itemCount: arrivalImagesPath.length,

        itemBuilder: (context, index) =>  Column(
      children: [
        Image.asset(arrivalImagesPath[index]),
        Center(
          child: CustomText(
            '21WN reversible angora \n          cardigan',
            fontSize: 12.sp,
            letterSpacing: 0,
          ),
        ),
        CustomText('\$120', color: Colors.red),
      ],
    ));
  }
}
