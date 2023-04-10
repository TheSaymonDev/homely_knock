import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/code_verification_page.dart';

class PhoneNumberVerification extends StatefulWidget {
  PhoneNumberVerification({Key? key}) : super(key: key);

  @override
  State<PhoneNumberVerification> createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  String? accounttype = "phone";

  final phoneController = TextEditingController();

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
        title: Text(
          'Forgot Password?',
          style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    activeColor: buttonClr,
                    title: Text('Phone'),
                    value: "phone",
                    groupValue: accounttype,
                    onChanged: (value) {
                      setState(() {
                        accounttype = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    activeColor: buttonClr,
                    title: Text('Email'),
                    value: "email",
                    groupValue: accounttype,
                    onChanged: (value) {
                      setState(() {
                        accounttype = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 58.h,
            ),
            accounttype == 'phone'
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Your Phone*',
                        style:
                            myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      customTextFormField(
                        controller: phoneController,
                        hintText: 'Enter your phone',
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your Email*',
                        style:
                            myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      customTextFormField(
                        controller: phoneController,
                        hintText: 'Enter your email',
                      )
                    ],
                  ),
            SizedBox(
              height: 40.h,
            ),
            customButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CodeVerificationPage(),
                    ));
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
