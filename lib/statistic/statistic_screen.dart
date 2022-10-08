import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
              width: 1.sw,
              height: 75.h,
              decoration: BoxDecoration(
                color: HexColor('#F2FEFF'),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Statistic", style: bigAppBar,),
                  IconButton(onPressed: () {}, icon: Image.asset('asset/image/share-black-big-icon.png', width: 24.w, height: 24.h,),),
                ],
              ),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 9.h, left: 16.w),
                        width: 164.w,
                        height: 95.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: graySecond),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today's Read", style: statItemTitle,),
                            SizedBox(height: 5.h,),
                            Text('2', style: statItemNum,),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 9.h, left: 16.w),
                        width: 164.w,
                        height: 95.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: graySecond),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today's Saved", style: statItemTitle,),
                            SizedBox(height: 5.h,),
                            Text('3', style: statItemNum,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 9.h, left: 16.w),
                        width: 164.w,
                        height: 95.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: graySecond),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Read", style: statItemTitle,),
                            SizedBox(height: 5.h,),
                            Text('15', style: statItemNum,),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 9.h, left: 16.w),
                        width: 164.w,
                        height: 95.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: graySecond),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Saved", style: statItemTitle,),
                            SizedBox(height: 5.h,),
                            Text('20', style: statItemNum,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
