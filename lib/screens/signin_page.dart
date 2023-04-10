import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/bottom_nav_bar_page.dart';
import 'package:homely_knock/screens/phone_number_verification_page.dart';
import 'package:homely_knock/screens/registration_page.dart';

class SigninPage extends StatefulWidget {
  SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _obscureText = true;
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scaffoldClr,
        leading: customBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in to your account',
                style: myStyle(24.sp, FontWeight.w500, secondaryTextClr),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    'Email',
                    style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, Color(0xffDA1414)),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                hintText: 'Email or Phone Number',
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
                  ),
                  Text(
                    '*',
                    style: myStyle(14.sp, FontWeight.w600, Color(0xffDA1414)),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextFormField(
                obscureText: _obscureText,
                hintText: '**********',
                iconButton: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: _obscureText == true
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkValue,
                    activeColor: buttonClr,
                    onChanged: (value) {
                      setState(() {
                        checkValue = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Remember me',
                    style: myStyle(14, FontWeight.w400, secondaryTextClr),
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              customButton(
                title: 'Sign in',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarPage(),
                      ));
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberVerification(),));
                },
                child: Text(
                  'Forgot the password?',
                  style: myStyle(16, FontWeight.w400, buttonClr),
                ),
              ),
              SizedBox(
                height: 16.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: myStyle(16, FontWeight.w400, secondaryTextClr),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage(),));
                      },
                      child: Text(
                        'Sign up',
                        style: myStyle(16, FontWeight.w600, buttonClr),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
