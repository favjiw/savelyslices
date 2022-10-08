import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:huaweihack/theme/theme.dart';

class ArticleNewBookmark extends StatefulWidget {
  const ArticleNewBookmark({Key? key}) : super(key: key);

  @override
  State<ArticleNewBookmark> createState() => _ArticleNewBookmarkState();
}

class _ArticleNewBookmarkState extends State<ArticleNewBookmark> {
  bool _checked = false;
  String status = "new article tags";

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
                Text('Add new', style: btmsheet,),
              ],
            ),
            TextButton(onPressed: () {}, child: Text('Save', style: txtBtnBlue,),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Link URL', style: textTitleBookmark,),
              SizedBox(height: 6.h,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(width: 1, color: graySecond),
                  ),
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'Enter link',
                  hintStyle: tagHint,
                ),
              ),
              SizedBox(height: 18.h,),
              Text('Tags', style: textTitleBookmark,),
              SizedBox(height: 6.h,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(width: 1, color: graySecond),
                  ),
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'Input a tag',
                  hintStyle: tagHint,
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    return Column(
                      children: [
                        SizedBox(height: 24.h,),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text('code', style: articleTagCheck,),
                          value: _checked,
                          onChanged: (bool? value){
                            setState(() {
                              _checked = value!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ],
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
