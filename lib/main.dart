import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:huaweihack/article/article_detail_screen.dart';
import 'package:huaweihack/article/article_new_bookmark.dart';
import 'package:huaweihack/article/article_note_screen.dart';
import 'package:huaweihack/article/article_tags_screen.dart';
import 'package:huaweihack/explore/explore_screen.dart';
import 'package:huaweihack/home/home_screen.dart';
import 'package:huaweihack/login/login_screen.dart';
import 'package:huaweihack/login/register_screen.dart';
import 'package:huaweihack/onboarding/onboarding_screen.dart';
import 'package:huaweihack/profile/profile_screen.dart';
import 'package:huaweihack/statistic/statistic_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ProfileScreen(),
          );
        }
    );
  }
}
