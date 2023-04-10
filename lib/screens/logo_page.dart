import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/intro_page.dart';

class LogoPage extends StatefulWidget {
  LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IntroPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A7949),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to',
              style: myStyle(22.sp, FontWeight.w400, scaffoldClr),
            ),
            Text(
              'Homely Knocks',
              style: GoogleFonts.museoModerno(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                  color: scaffoldClr),
            ),
          ],
        ),
      )),
    );
  }
}
