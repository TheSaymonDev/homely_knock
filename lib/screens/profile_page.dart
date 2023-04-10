import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/faq_help_page.dart';
import 'package:homely_knock/screens/leads_page.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/my_responces_page.dart';
import 'package:homely_knock/screens/realtime_services_page.dart';
import 'package:homely_knock/screens/settings_page.dart';
import 'package:homely_knock/screens/signin_page.dart';
import 'package:homely_knock/screens/wishlist_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Profile',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/red.png",
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Built wright inc',
                        style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'info@builtwrightinc.com',
                        style:
                            myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset("images/switch.png"),
                  SizedBox(
                    width: 40.w,
                  ),
                  Image.asset("images/options.png"),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 150.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 22.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: containerClr),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your profile is 80% complete",
                            style:
                                myStyle(16, FontWeight.w500, primaryTextClr)),
                        Image.asset(
                          "images/edit.png",
                          height: 22.h,
                          width: 22.w,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 8.h,
                            percent: 0.8,
                            barRadius: Radius.circular(30.r),
                            progressColor: buttonClr,
                            backgroundColor: scaffoldClr,
                          ),
                        ),
                        Text(
                          '8/10',
                          style: myStyle(14, FontWeight.w500, primaryTextClr),
                        )
                      ],
                    ),
                    Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                      style: myStyle(14, FontWeight.w400, secondaryTextClr),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 167.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: containerClr),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OverView',
                      style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/elite.png'),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              'Elite Pro',
                              style: myStyle(
                                  14.sp, FontWeight.w500, primaryTextClr),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/right.png'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              '14 Hires on Ringknock',
                              style: myStyle(
                                  14.sp, FontWeight.w500, primaryTextClr),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/reading.png'),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              '7 Years in business',
                              style: myStyle(
                                  14.sp, FontWeight.w500, primaryTextClr),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/timer.png'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              '6 Hour response  time',
                              style: myStyle(
                                  14.sp, FontWeight.w500, primaryTextClr),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('images/person.png'),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '11-50 Staff',
                          style:
                              myStyle(14.sp, FontWeight.w500, primaryTextClr),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 151.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 24.h),
                color: containerClr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Service Tags',
                          style: myStyle(20, FontWeight.w500, primaryTextClr),
                        ),
                        Text(
                          '#Bathroom_installation',
                          style: myStyle(14, FontWeight.w400, buttonClr),
                        ),
                        Text(
                          '#Kitchen Refurbishment',
                          style: myStyle(14, FontWeight.w400, primaryTextClr),
                        ),
                        Text(
                          '#Kitchen Design & Planning',
                          style: myStyle(14, FontWeight.w400, primaryTextClr),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                          style: myStyle(20, FontWeight.w500, primaryTextClr),
                        ),
                        Text(
                          '#Bathroom',
                          style: myStyle(14, FontWeight.w400, buttonClr),
                        ),
                        Text(
                          '#Kitchen',
                          style: myStyle(14, FontWeight.w400, primaryTextClr),
                        ),
                        Text(
                          'View More',
                          style: myStyle(14, FontWeight.w500, buttonClr),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              profileItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LeadsPage(),
                      ));
                },
                imgUrl: 'images/star.png',
                title: 'Leads',
                count: '416',
                clr: buttonClr.withOpacity(0.2),
              ),
              SizedBox(
                height: 20.h,
              ),
              profileItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyResponcePage(),
                      ));
                },
                imgUrl: 'images/hand.png',
                title: 'My Responces',
                count: '416',
                clr: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(
                height: 20.h,
              ),
              profileAnotherItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WishListPage(),
                      ));
                },
                imgUrl: 'images/love.png',
                title: 'Wishlist',
              ),
              SizedBox(
                height: 20.h,
              ),
              profileAnotherItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ));
                },
                imgUrl: 'images/settings.png',
                title: 'Settings',
              ),
              SizedBox(
                height: 20.h,
              ),
              profileAnotherItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FaqHelpPage(),
                      ));
                },
                imgUrl: 'images/question.png',
                title: 'Help',
              ),
              SizedBox(
                height: 20.h,
              ),
              profileItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RealTimeServicesPage(),
                      ));
                },
                imgUrl: 'images/verified.png',
                title: 'Services',
                count: '50',
                clr: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(
                height: 20.h,
              ),
              profileItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationPage(),
                      ));
                },
                imgUrl: 'images/location.png',
                title: 'Locations',
                count: '50',
                clr: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninPage(),
                      ),
                      (route) => false);
                },
                child: Container(
                  height: 43.h,
                  width: 124.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Color(0xffDF2929)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.login,
                        color: scaffoldClr,
                        size: 18.sp,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Logout',
                        style: myStyle(16.sp, FontWeight.w500, scaffoldClr),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class profileAnotherItem extends StatelessWidget {
  profileAnotherItem({Key? key, this.title, this.imgUrl, this.onTap})
      : super(key: key);

  String? title, imgUrl;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: scaffoldClr,
            border: Border.all(color: Colors.grey[300]!.withOpacity(0.2))),
        child: Row(
          children: [
            Image.asset(imgUrl!),
            SizedBox(
              width: 12.w,
            ),
            Text(
              title!,
              style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: primaryTextClr,
              size: 15.sp,
            )
          ],
        ),
      ),
    );
  }
}

class profileItem extends StatelessWidget {
  profileItem(
      {Key? key, this.title, this.imgUrl, this.count, this.clr, this.onTap})
      : super(key: key);

  String? title, imgUrl, count;
  Color? clr;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: scaffoldClr,
            border: Border.all(color: Colors.grey[300]!.withOpacity(0.2))),
        child: Row(
          children: [
            Image.asset(imgUrl!),
            SizedBox(
              width: 12.w,
            ),
            Text(
              title!,
              style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              height: 18.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: clr, borderRadius: BorderRadius.circular(15.r)),
              child: Text(
                count!,
                style: TextStyle(fontSize: 12.sp, color: buttonClr),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: primaryTextClr,
              size: 15.sp,
            )
          ],
        ),
      ),
    );
  }
}
