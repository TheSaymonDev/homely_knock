import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/bottom_nav_bar_page.dart';

class UpdateLeadsSettingsPage extends StatelessWidget {
  UpdateLeadsSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Update Lead settings',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leads you can choose to contact.',
              style: myStyle(18.sp, FontWeight.w500, buttonClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Your services',
              style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Fine tune the leads you want to be alerted about.',
              style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 57.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r), color: scaffoldClr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wedding Photography',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                      Text(
                        'All leads . 1 location',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryTextClr,
                    size: 16.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 57.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r), color: scaffoldClr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Web Design',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                      Text(
                        'All leads . 1 location',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryTextClr,
                    size: 16.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 57.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: buttonClr),
                  borderRadius: BorderRadius.circular(3.r),
                  color: scaffoldClr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 20.sp,
                    color: buttonClr,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Add a Service',
                    style: myStyle(14.sp, FontWeight.w400, buttonClr),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Your locations',
              style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Choose where you want to find new customers.',
              style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 57.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r), color: scaffoldClr),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 22.sp,
                    color: buttonClr,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4517 Washington',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '20 miles of K0A 0A1',
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'images/edit.png',
                    height: 18.h,
                    width: 18.w,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 57.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: buttonClr),
                  borderRadius: BorderRadius.circular(3.r),
                  color: scaffoldClr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 20.sp,
                    color: buttonClr,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Add a New Location',
                    style: myStyle(14.sp, FontWeight.w400, buttonClr),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Online/remote leads',
              style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Customers tell us if they’re happy to receive services online or remotely.',
              style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            customButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBarPage(),
                    ));
              },
              title: 'Save',
            )
          ],
        ),
      ),
    );
  }
}
