import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool _isSelected = false;
  bool _isSaved = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
                    Text('Explore', style: bigAppBar,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h,),
                  SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index){
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ChoiceChip(
                              selectedColor: primary,
                              labelPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 24.w),
                              label: Text('All', style: _isSelected ? chipSelected : chipUnSelected, textAlign: TextAlign.center,),
                              selected: _isSelected,
                              onSelected: (newBoolValue){
                                setState(() {
                                  _isSelected = newBoolValue;
                                });
                              },
                            ),
                            SizedBox(width: 12.w,),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Container(
                    width: 1.sw,
                    height: 1,
                    color: graySecond,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index){
                        return Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 222.w,
                                          child: InkWell(
                                              onTap: () {},
                                              child: Text("Launch your startup ideas, using no code tools", style: itemTitle,)),
                                        ),
                                        SizedBox(height: 6.h,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("medium.com", style: itemSource,),
                                            SizedBox(width: 8.w,),
                                            Container(
                                              width: 1.w,
                                              height: 12.h,
                                              color: HexColor('#626262'),
                                            ),
                                            SizedBox(width: 8.w,),
                                            Text("5 min", style: itemSource,),
                                          ],
                                        ),
                                        SizedBox(height: 22.h,)
                                      ],
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.r),
                                      child: Image.network('https://global-uploads.webflow.com/6100d0111a4ed76bc1b9fd54/62a030850a538782b1755eeb_coding%203.jpg', width: 88.w, height: 64.h, fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            _isSaved = true;
                                          });
                                        },
                                        child: Image.asset(_isSaved ? 'asset/image/save-blue-icon.png' : 'asset/image/save-icon.png', width: 15.w, height: 20.h,)),
                                    SizedBox(width: 34.w,),
                                    Image.asset('asset/image/option-icon.png', width: 4.w, height: 18.h,),
                                    SizedBox(width: 10.w,)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            Container(
                              width: 1.sw,
                              height: 1,
                              color: graySecond,
                            ),
                            SizedBox(height: 24.h,),
                          ],
                        );
                      }
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
