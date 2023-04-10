import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class BadgesPage extends StatelessWidget {
  BadgesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Badges',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: containerClr),
              child: Row(
                children: [
                  Image.asset('images/badges.png'),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Golden Badges',
                        style: myStyle(18.sp, FontWeight.w500, buttonClr),
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys. ',
                        style:
                            myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                      )
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'You are  In Golden Badge Member',
                  style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                ),
                Text(
                  '2/3',
                  style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 8.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      color: buttonClr),
                )),
                SizedBox(
                  width: 1.w,
                ),
                Expanded(
                    child: Container(
                  height: 8.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      color: buttonClr),
                )),
                SizedBox(
                  width: 1.w,
                ),
                Expanded(
                    child: Container(
                  height: 8.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: buttonClr.withOpacity(0.3)),
                )),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Golden Badge Advantage',
              style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 16.sp,
                  color: buttonClr,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                    child: Text(
                  'Lorem Ipsum is simply dummy text of has been the industrys. Lorem Ipsum is simply dummy text of the printing.',
                  style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                ))
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 16.sp,
                  color: buttonClr,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                    child: Text(
                  'Lorem Ipsum is simply dummy text of has been the industrys. Lorem Ipsum is simply dummy text of the printing.',
                  style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                ))
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Bye/Sale More Services And get Dimond Badge',
              style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
            ),
            SizedBox(
              height: 22.h,
            ),
            Text(
              'See How to get Dimond Badge Member',
              style: myStyle(18.sp, FontWeight.w500, buttonClr),
            )
          ],
        ),
      ),
    );
  }
}
