import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:huaweihack/theme/theme.dart';

class ArticleDetailScreen extends StatefulWidget {
  const ArticleDetailScreen({Key? key}) : super(key: key);

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'asset/image/play-icon.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'asset/image/note-icon.png',
                    width: 17.w,
                    height: 17.h,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'asset/image/share-black-icon.png',
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'asset/image/option-black-icon.png',
                    width: 4.w,
                    height: 18.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        width: 1.sw,
        height: 56.h,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.10),
              offset: Offset(0, -2),
              blurRadius: 4,
              spreadRadius: 0),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Previous',
                    style: btmsheet,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Next',
                    style: btmsheet,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
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
