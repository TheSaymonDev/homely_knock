import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/new_password_page.dart';

class CodeVerificationPage extends StatefulWidget {
  CodeVerificationPage({Key? key}) : super(key: key);

  @override
  State<CodeVerificationPage> createState() => _CodeVerificationPageState();
}


bool _onEditing = true;
String? _code;
CountdownController countdownController =
CountdownController(duration: Duration(minutes: 1));

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  int _counter = 0;
  int click = 0;
  late Timer _timer;
  Color timertxcol = buttonClr;
  void _startTimer() {
    _counter = 60;
    _timer = Timer.periodic(Duration(milliseconds: 1550), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else if (_counter == 0) {
        timertxcol = Colors.red;
      } else {
        _timer.cancel();
      }
    });
  }
  @override
  void initState() {
   _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: customBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Code',
              style: myStyle(20, FontWeight.w500, primaryTextClr),
            ),
            RichText(
                text: TextSpan(
                    text: 'Code has send to ',
                    style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                    children: [
                  TextSpan(
                      text: '01921*******',
                      style: myStyle(14.sp, FontWeight.w400, buttonClr))
                ]))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            VerificationCode(
              itemSize: 36,
              underlineUnfocusedColor: buttonClr.withOpacity(0.3),
              fullBorder: true,
              fillColor: Color(0xffE7F6EF),
              underlineWidth: 1,
              length: 4,
              cursorColor: buttonClr,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            SizedBox(
              height: 46.h,
            ),
            RichText(
                text: TextSpan(
                    text: 'Resend code in ',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    children: [
                  TextSpan(
                      text:  '$_counter',
                      style: myStyle(16.sp, FontWeight.w400, buttonClr)),
                  TextSpan(
                      text: ' s',
                      style: myStyle(16.sp, FontWeight.w400, secondaryTextClr)),
                ])),
            SizedBox(
              height: 63.h,
            ),
            customButton(
              onTap: (){
                setState(() {
                  _startTimer();
                  click++;
                });
                if (click > 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NewPasswordPage()));
                }
              },
              title:   _counter == 0 ? 'Re-send' : 'Next',
            )
          ],
        ),
      ),
    );
  }
}
