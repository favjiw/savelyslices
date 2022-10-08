import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 56.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              minWidth: 33,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    currentIndex == 0
                        ? 'asset/image/home-icon-active.png'
                        : 'asset/image/home-icon-inactive.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                  Text(
                    'Home',
                    style:
                    currentIndex == 0 ? navBarSelected : navBarUnSelected,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              minWidth: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    currentIndex == 1
                        ? 'asset/image/explore-icon-active.png'
                        : 'asset/image/explore-icon-inactive.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                  Text(
                    'Explore',
                    style:
                    currentIndex == 1 ? navBarSelected : navBarUnSelected,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              minWidth: 45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    currentIndex == 2
                        ? 'asset/image/stat-icon-active.png'
                        : 'asset/image/stat-icon-inactive.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                  Text(
                    'Statistic',
                    style:
                    currentIndex == 2 ? navBarSelected : navBarUnSelected,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              minWidth: 45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    currentIndex == 3
                        ? 'asset/image/user-icon-active.png'
                        : 'asset/image/user-icon-inactive.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                  Text(
                    'Profile',
                    style:
                    currentIndex == 3 ? navBarSelected : navBarUnSelected,
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
