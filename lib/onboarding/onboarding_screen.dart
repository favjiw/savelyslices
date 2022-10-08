import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 154.h),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Image.asset(
                  'asset/image/phone-img.png',
                  width: 246.03.w,
                  height: 241.5.h,
                ),
                SizedBox(
                  height: 53.24.h,
                ),
                Text(
                  'Save articles with ease',
                  style: onBoardTitle,
                ),
                SizedBox(
                    width: 256.w,
                    child: Text(
                      'You can add all your read later article here fast and easy',
                      style: onBoardSubTitle,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Image.asset(
                  'asset/image/person-1-img.png',
                  width: 155.92.w,
                  height: 253.23.h,
                ),
                SizedBox(
                  height: 50.64.h,
                ),
                Text(
                  'Actually Read Later',
                  style: onBoardTitle,
                ),
                SizedBox(
                    width: 256.w,
                    child: Text(
                      'Get a reminder also set your daily goals to make habit',
                      style: onBoardSubTitle,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Image.asset(
                  'asset/image/person-2-img.png',
                  width: 263.61.w,
                  height: 259.26.h,
                ),
                SizedBox(
                  height: 50.64.h,
                ),
                Text(
                  'Get Statistics',
                  style: onBoardTitle,
                ),
                SizedBox(
                    width: 256.w,
                    child: Text(
                      'Know your read statistic easily, built habit from now on',
                      style: onBoardSubTitle,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 153.h,
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 10.w,
                      dotHeight: 12.h,
                      dotWidth: 12.w,
                      type: WormType.normal,
                      dotColor: gray,
                      activeDotColor: primary,
                    ),
                  ),
                  SizedBox(height: 54.h),
                  SizedBox(
                    width: 329.w,
                    height: 48.h,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: txtBtnWhite,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(primary)),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 153.h,
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 10.w,
                      dotHeight: 12.h,
                      dotWidth: 12.w,
                      type: WormType.normal,
                      dotColor: gray,
                      activeDotColor: primary,
                    ),
                  ),
                  SizedBox(height: 54.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 108.w,
                        height: 40.h,
                        child: TextButton(
                          onPressed: () {
                            controller.jumpToPage(2);
                          },
                          child: Text(
                            'Skip',
                            style: txtBtnBlue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 108.w,
                        height: 40.h,
                        child: TextButton(
                          onPressed: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          child: Text(
                            'Next',
                            style: txtBtnWhite,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(primary)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
