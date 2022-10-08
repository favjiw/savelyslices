import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSelected = false;

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
                height: 86.h,
                decoration: BoxDecoration(
                  color: HexColor('#F2FEFF'),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reading List", style: smallAppbar,),
                            Text("27 Sep", style: subSmallAppbar,),
                          ],
                        ),
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add, color: Colors.white,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Daily Goals", style: barTitle,),
                        Text("80%", style: barTitle,),
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      barRadius: Radius.circular(8.r),
                      animation: true,
                      animationDuration: 1000,
                      width: 335.w,
                      lineHeight: 10.h,
                      percent: 0.8,
                      progressColor: primary,
                    ),
                    SizedBox(height: 24.h,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ChoiceChip(
                            selectedColor: primary,
                            labelPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 24.w),
                            label: Text('All', style: _isSelected ? chipSelected : chipUnSelected,),
                            selected: _isSelected,
                            onSelected: (newBoolValue){
                              setState(() {
                                _isSelected = newBoolValue;
                              });
                            },
                          ),
                          SizedBox(width: 12.w,),
                          ChoiceChip(
                            selectedColor: primary,
                            labelPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 24.w),
                            label: Text('Unread', style: _isSelected ? chipSelected : chipUnSelected,),
                            selected: _isSelected,
                            onSelected: (newBoolValue){
                              setState(() {
                                _isSelected = newBoolValue;
                              });
                            },
                          ),
                          SizedBox(width: 12.w,),
                          ChoiceChip(
                            selectedColor: primary,
                            labelPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 15.w),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Tag', style: _isSelected ? chipSelected : chipUnSelected,),
                                SizedBox(width: 8.w,),
                                Icon(Icons.keyboard_arrow_down_rounded, color: _isSelected ? Colors.white : HexColor('#535353'),),
                              ],
                            ),
                            selected: _isSelected,
                            onSelected: (newBoolValue){
                              setState(() {
                                _isSelected = newBoolValue;
                              });
                            },
                          ),
                        ],
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
                                          SizedBox(height: 12.h,),
                                          Row(
                                            children: [
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text("#Code", style: articleTag,),
                                                style: TextButton.styleFrom(
                                                  primary: graySecond,
                                                  backgroundColor: graySecond,
                                                ),
                                              ),
                                              SizedBox(width: 6.w,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text("#Startup", style: articleTag,),
                                                style: TextButton.styleFrom(
                                                  primary: graySecond,
                                                  backgroundColor: graySecond,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                      Image.asset('asset/image/share-icon.png', width: 18.w, height: 18.h,),
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
