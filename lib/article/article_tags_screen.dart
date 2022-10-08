import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:huaweihack/theme/theme.dart';

class ArticleTagsScreen extends StatefulWidget {
  const ArticleTagsScreen({Key? key}) : super(key: key);

  @override
  State<ArticleTagsScreen> createState() => _ArticleTagsScreenState();
}

class _ArticleTagsScreenState extends State<ArticleTagsScreen> {
  bool _checked = false;
  String status = "new article tags";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                Text('Tags', style: btmsheet,),
              ],
            ),
            TextButton(onPressed: () {}, child: Text('Save', style: txtBtnBlue,),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: TextField(
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
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: SizedBox(
                width: 141.w,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add, color: primary,),
                        SizedBox(width: 12.w,),
                        Text("Create cod", style: createTxtBtn,),
                      ],
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
