import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/phone_number_verification_page.dart';

class AccountDetailsPage extends StatelessWidget {
  AccountDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Settings',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Details',
              style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              color: containerClr,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: buttonClr,
                    size: 25.sp,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: RichText(
                          text: TextSpan(
                              text:
                                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                              children: [
                            TextSpan(
                                text: ' My Profile',
                                style:
                                    myStyle(14.sp, FontWeight.w400, buttonClr))
                          ])),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: .7, color: secondaryTextClr.withOpacity(0.3)),
                      bottom: BorderSide(
                          width: .7,
                          color: secondaryTextClr.withOpacity(0.3)))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact details',
                    style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Account email',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 50,
                    child: customTextFormField(
                      hintText: 'suppose@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Preferred contact number',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 50,
                    child: customTextFormField(
                      hintText: '01888888888',
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'SMS notification number',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: customTextFormField(
                      hintText: '01888888888',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Change Password',
              style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Amet minim mollit non deserunt',
              style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
            ),
            SizedBox(
              height: 16.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberVerification(),));
              },
              child: Container(
                alignment: Alignment.center,
                width: 147,
                height: 34,
                decoration: BoxDecoration(
                    color: buttonClr, borderRadius: BorderRadius.circular(3.r)),
                child: Text(
                  'Change Password',
                  style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
