import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/order_options_page.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Order',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Place a new request',
              style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Amet minim mollit non deserunt ullamco\nest sit aliqua dolor do amet sint',
              style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
            ),
            SizedBox(
              height: 38.h,
            ),
            Text(
              'What service do you need?',
              style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 16.h,
            ),
            customTextFormField(
              hintText: 'House cleaning',
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Where do you need it?',
              style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 16.h,
            ),
            customTextFormField(
              hintText: 'N6B 1M5',
            ),
            SizedBox(
              height: 42.h,
            ),
            customButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderOptionsPage(),));
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
