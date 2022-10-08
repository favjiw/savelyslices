import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';
import 'package:huaweihack/widgets/botnavbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              width: 1.sw,
              height: 72.h,
              decoration: BoxDecoration(
                color: HexColor('#F2FEFF'),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20.h, left: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Profile', style: bigAppBar,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network('https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1510033690/xtys6miadoejvaigkxf7.jpg', width: 54.w, height: 54.h, fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 12.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Emirsyah', style: profileName,),
                          Text('muhammademir48@gmail.com', style: profileEmail,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h,),
                  Text('Account', style: profileItemTitle,),
                  SizedBox(height: 18.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/pencil-icon.png', width: 17.w, height: 17.h,),
                                SizedBox(width: 12.w,),
                                Text('Change profile', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/bell-icon.png', width: 20.w, height: 19.h,),
                                SizedBox(width: 12.w,),
                                Text('Reminder & Notification', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h,),
                  Text('General', style: profileItemTitle,),
                  SizedBox(height: 18.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/help-icon.png', width: 18.w, height: 18.h,),
                                SizedBox(width: 12.w,),
                                Text('Help', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/feedback-icon.png', width: 24.w, height: 24.h,),
                                SizedBox(width: 12.w,),
                                Text('Feedback', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/share-black-big-icon.png', width: 19.w, height: 19.h,),
                                SizedBox(width: 12.w,),
                                Text('Share With Friends', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/star-icon.png', width: 15.w, height: 15.h,),
                                SizedBox(width: 12.w,),
                                Text('Rate Us', style: profileItemSubTitle,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('asset/image/logout-icon.png', width: 18.w, height: 18.h,),
                                SizedBox(width: 12.w,),
                                Text('Logout', style: logoutTxt,),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded, color: HexColor('#606060'),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34.w, top: 16.h),
                          width: 300.w,
                          height: 1.h,
                          color: HexColor('#E5E5E5'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
