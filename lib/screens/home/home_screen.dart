import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/screens/home/appBar_screen.dart';
import 'package:responsive_ui/screens/home/drawer_screen.dart';
import 'package:responsive_ui/screens/responsive/responsive_layout.dart';
import 'package:responsive_ui/utils/colors.dart';
import 'package:responsive_ui/utils/custom_text.dart';

import 'components/arrival_griditem_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool islandscape(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  @override
  Widget build(BuildContext context) {
    bool islandscapemode = islandscape(context);

    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppbarScreen(),
      drawer: DrawerScreen(islandcape: islandscapemode),
      body: ListView(
        children: [
          Image.asset('assets/images/Banner.png', fit: BoxFit.contain),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            heightFactor: 0,
            child: CustomText(
              'New Arrival',
              fontSize: 18.sp,
              letterSpacing: 4.sp,
            ),
          ),
          Image.asset(utilsImagesPath + '8.png'),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText('All', fontSize: 14.sp),
              CustomText('Apparel', fontSize: 14.sp),
              CustomText('Dress', fontSize: 14.sp),
              CustomText('Tshirt', fontSize: 14.sp),
              CustomText('Bag', fontSize: 14.sp),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ArrivalGriditemView(
              childAspectRatio: ResponsiveLayout.isTablet(context)?0.30 :0.70,
              crossAxisCount:ResponsiveLayout.isMobile(context)? 2:4,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText('Explore More ----', fontSize: 16.sp),
                Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black,
                  size: 20.r,
                ),
              ],
            ),
          ),
          Image.asset(utilsImagesPath + '8.png'),
          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imagesPath + 'Prada.png'),
              Image.asset(imagesPath + 'Burberry.png'),
              Image.asset(imagesPath + 'Boss.png'),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imagesPath + 'Catier.png'),
              Image.asset(imagesPath + 'Gucci.png'),
              Image.asset(imagesPath + 'Tiffany.png'),
            ],
          ),
          SizedBox(height: 30.h),

          Image.asset(utilsImagesPath + '8.png'),
          SizedBox(height: 30.h),

          Center(
            child: CustomText(
              'Collections'.toUpperCase(),
              letterSpacing: 4.sp,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 10.h),

          Padding(
            padding: islandscapemode
                ? const EdgeInsets.symmetric(horizontal: 40)
                : EdgeInsetsGeometry.zero,

            child: Image.asset(imagesPath + 'Frame 2.png', fit: BoxFit.fill),
          ),
          SizedBox(height: 30.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(imagesPath + 'image 9.png'),
              Positioned(
                right: islandscapemode ? 320.r : 88.r,
                top: 36.r,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Autumn',
                      style: GoogleFonts.bodoniModa(
                        fontSize: islandscapemode ? 20.sp : 42.sp,
                        letterSpacing: -1.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CustomText(
                      'Collection',
                      letterSpacing: 5.31,
                      fontSize: islandscapemode ? 4.sp : 11.32.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),

          Padding(
            padding: islandscapemode
                ? const EdgeInsets.symmetric(horizontal: 40)
                : EdgeInsetsGeometry.zero,
            child: Image.asset(imagesPath + 'videoImage.png', fit: BoxFit.fill),
          ),
          SizedBox(height: 40.h),

          Center(
            child: CustomText(
              'Just for You'.toUpperCase(),
              letterSpacing: 4.sp,
              fontSize: 18.sp,
            ),
          ),
          Image.asset(utilsImagesPath + '8.png'),
          SizedBox(height: 20.h),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // height: ,
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      imagesPath + 'Rectangle1.png',
                      fit: BoxFit.fill,
                      // height: 312.h,
                      // width: 255.w,
                    ),
                    Center(
                      child: CustomText(
                        '21WN reversible angora \n          cardigan',
                        fontSize: islandscapemode ? 12.sp : 16.sp,
                        letterSpacing: 0,
                      ),
                    ),
                    CustomText('\$120', color: Colors.red),
                  ],
                ),
                SizedBox(width: 15.w),
                Column(
                  children: [
                    Image.asset(
                      imagesPath + 'Rectangle2.png',
                      fit: BoxFit.fill,
                      // height: 312.h,
                      // width: 255.w,
                    ),
                    Center(
                      child: CustomText(
                        '21WN reversible angora \n          cardigan',
                        fontSize: islandscapemode ? 12.sp : 16.sp,
                        letterSpacing: 0,
                      ),
                    ),
                    CustomText('\$120', color: Colors.red),
                  ],
                ),
                SizedBox(width: 15.w),

                Column(
                  children: [
                    Image.asset(
                      imagesPath + 'Rectangle3.png',
                      fit: BoxFit.fill,
                      // height: 312.h,
                      // width: 255.w,
                    ),
                    Center(
                      child: CustomText(
                        '21WN reversible angora \n          cardigan',
                        fontSize: islandscapemode ? 12.sp : 16.sp,
                        letterSpacing: 0,
                      ),
                    ),
                    CustomText('\$120', color: Colors.red),
                  ],
                ),
                SizedBox(width: 15.w),

                Column(
                  children: [
                    Image.asset(
                      imagesPath + 'Rectangle4.png',
                      fit: BoxFit.fill,
                      // height: 312.h,
                      // width: 255.w,
                    ),
                    Center(
                      child: CustomText(
                        '21WN reversible angora \n          cardigan',
                        fontSize: islandscapemode ? 12.sp : 16.sp,
                        letterSpacing: 0,
                      ),
                    ),
                    CustomText('\$120', color: Colors.red),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(),
                ),
              ),

              SizedBox(width: 5),

              Container(
                padding: EdgeInsetsGeometry.all(5),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(),
                ),
              ),
              SizedBox(width: 5),

              Container(
                padding: EdgeInsetsGeometry.all(5),

                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Column(
            children: [
              Image.asset(imagesPath + 'Trending.png'),
              SizedBox(height: 20.h),

              Image.asset(imagesPath + 'group_photo.png'),
              SizedBox(height: 20.h),

              Image.asset(imagesPath + 'Openfashion.png'),
              SizedBox(height: 20.h),
            ],
          ),

          Center(
            child: SizedBox(
              width: 242,
              height: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: AlignmentDirectional.center,
                    color: Colors.black,
                    child: Text('1', style: TextStyle(color: Colors.white38)),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    alignment: AlignmentDirectional.center,
                    color: Color(0xff888888),
                    child: Text('3'),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    alignment: AlignmentDirectional.center,
                    color: Color(0xff888888),
                    child: Text('4'),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    alignment: AlignmentDirectional.center,
                    color: Color(0xff888888),
                    child: Text('2'),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    alignment: AlignmentDirectional.center,
                    color: Color(0xff888888),
                    child: Text('2'),
                  ),
                  Icon(Icons.arrow_circle_right_outlined),
                ],
              ),
            ),
          ),

          Column(
            children: [
              SizedBox(height: 40),
              SizedBox(
                width: 162,
                height: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/utils/Twitter.png'),
                    Image.asset('assets/images/utils/instagram.png'),
                    Image.asset('assets/images/utils/youtube.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/images/utils/8.png'),
              SizedBox(height: 20),
              CustomText('support@openui.design', fontSize: 16),
              CustomText('+60 825 876', fontSize: 16),
              CustomText('08:00 - 22:00 - Everyday', fontSize: 16),
              SizedBox(height: 20),
              Image.asset('assets/images/utils/8.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    'About',
                    fontSize: 16,
                    fontweight: FontWeight.w400,
                  ),
                  CustomText(
                    'Contact',
                    fontSize: 16,
                    fontweight: FontWeight.w400,
                  ),
                  CustomText('Blog', fontSize: 16, fontweight: FontWeight.w400),
                ],
              ),
              SizedBox(height: 20),

              CustomText(
                'Copyright© OpenUI All Rights Reserved.',
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
