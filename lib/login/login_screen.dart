import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huaweihack/theme/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: secondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32.h, left: 16.w),
            child: Text(
              'Nama Aplikasi',
              style: appName,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 34.h, left: 18.w, right: 20.w),
                width: 1.sw,
                height: 514.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: logTitle,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextField(
                      style: logInput,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.r),
                          borderSide: BorderSide(width: 1, color: graySecond),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 10.w),
                        hintText: 'Email',
                        hintStyle: emailHint,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      style: logInput,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.r),
                          borderSide: BorderSide(width: 1, color: graySecond),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 10.w),
                        hintText: 'Password',
                        hintStyle: emailHint,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 320.w,
                        height: 48.h,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Masuk',
                            style: txtBtnWhite,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(primary)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: txtBtnBlue,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 130.w,
                          height: 1.h,
                          color: HexColor('#A6A6A6'),
                        ),
                        Text(
                          'Or',
                          style: orTxt,
                        ),
                        Container(
                          width: 130.w,
                          height: 1.h,
                          color: HexColor('#A6A6A6'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/image/icon-google.png',
                              width: 28.w,
                              height: 28.h,
                            ),
                            SizedBox(
                              width: 53.w,
                            ),
                            Text(
                              'Continue with Google',
                              style: googleTxt,
                            ),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 20.w),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ", style: dontTxt,),
                          TextButton(onPressed: () {}, child: Text('Register', style: txtBtnBlue,),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
