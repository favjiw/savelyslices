import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:huaweihack/theme/theme.dart';

class ArticleNoteScreen extends StatefulWidget {
  const ArticleNoteScreen({Key? key}) : super(key: key);

  @override
  State<ArticleNoteScreen> createState() => _ArticleNoteScreenState();
}

class _ArticleNoteScreenState extends State<ArticleNoteScreen> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset('asset/image/x-icon.png', width: 12.w, height: 12.h,),
                ),
                Text('Note', style: btmsheet,),
              ],
            ),
            TextButton(onPressed: () {}, child: Text('Save', style: txtBtnBlue,),),
          ],
        ),
      ),
    );
  }
}
