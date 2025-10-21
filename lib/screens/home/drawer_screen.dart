import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/custom_text.dart';

class DrawerScreen extends StatelessWidget {
  bool islandcape;

  DrawerScreen({super.key, required this.islandcape});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.maxFinite/2,
      child: Padding(
        padding: EdgeInsetsGeometry.only(
          left: 16.r,
          right: 50.r,
          bottom: 20.r,
          top: 10.r,
        ),
        child: SafeArea(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // DrawerListTile()
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              SizedBox(height: 20),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CustomText('WOMAN', fontSize: islandcape ? 5.sp : 14.sp)),
                  SizedBox(width: islandcape ? 50.h : 50.w),
                  Expanded(child: CustomText('MAN', fontSize: 14.sp)),
                  SizedBox(width: islandcape ? 50.h : 50.w),

                  Expanded(child: CustomText('KIDS', fontSize: 14.sp)),
                ],
              ),
              Divider(
                // indent: 20,
                endIndent: 85.w,
                thickness: 1.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  DwarerTextTile(text: 'Bag',)
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.black.withOpacity(0.35),
                    size: 38.r,
                  ),
                  SizedBox(width: 5.w),
                  CustomText('(786) 713-8616', fontSize: 14.sp),
                ],
              ),
              SizedBox(height: 15.h),

              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.black.withOpacity(0.35),
                    size: 38.r,
                  ),
                  SizedBox(width: 5.w),

                  CustomText('(786) 713-8616', fontSize: 14.sp),
                ],
              ),
              SizedBox(height: 45.h),
              Divider(endIndent: 90.w, indent: 90.w),
              Spacer(),
              Center(
                child: SizedBox(
                  width: 145.w,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/utils/Twitter.png'),
                      Image.asset('assets/images/utils/instagram.png'),
                      Image.asset('assets/images/utils/youtube.png'),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
class DwarerTextTile extends StatelessWidget {
  const DwarerTextTile({super.key,required this.text});

 final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Colors.black.withOpacity(0.25),
      ),
    );
  }
}

