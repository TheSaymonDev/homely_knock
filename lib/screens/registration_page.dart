import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/signin_page.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: scaffoldClr,
        leading: customBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Registration',
          style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 45.h,
              ),
              Row(
                children: [
                  Text(
                    'Full Name',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: 'Enter your name',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Email',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: 'Enter your email',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: '********',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Confirm Password',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: '********',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Date of Birth',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: '12-04-1998',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Number',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: '+880 1921353912',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    ' Corporation Name',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: 'Freelance Learning Centre',
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Corporation Number',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, buttonClr),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: '+880 1921353912',
              ),
              SizedBox(
                height: 40.h,
              ),
              customButton(
                title: 'Next',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninPage(),
                      ));
                },
              ),
              SizedBox(
                height: 51.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
