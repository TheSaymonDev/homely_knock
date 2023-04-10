import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/signin_page.dart';
import 'package:homely_knock/screens/signup_category_page.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 483.h,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/intro1.png'))),
            ),
          ),
          SizedBox(
            height: 68.h,
          ),
          Text(
            'Choose Your Service',
            style: myStyle(24.sp, FontWeight.w500, primaryTextClr),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Ringknock is a online on demand\nservice. It’s has as into the 50k+ services',
            textAlign: TextAlign.center,
            style: myStyle(16.sp, FontWeight.w300, secondaryTextClr),
          ),
          SizedBox(
            height: 68.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: customButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupCategoryPage(),
                    ));
              },
              title: 'Create Profile',
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have a profile?',
                style: myStyle(16, FontWeight.w400, secondaryTextClr),
              ),
              SizedBox(
                width: 8.w,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninPage(),
                        ));
                  },
                  child: Text(
                    'Sign in',
                    style: myStyle(16, FontWeight.w600, buttonClr),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
