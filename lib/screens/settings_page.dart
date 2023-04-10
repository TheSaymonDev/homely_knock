import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/account_details_page.dart';
import 'package:homely_knock/screens/bedge_page.dart';
import 'package:homely_knock/screens/billing_details_page.dart';
import 'package:homely_knock/screens/browser_notifications_page.dart';
import 'package:homely_knock/screens/elite_pro_page.dart';
import 'package:homely_knock/screens/email_notifications_page.dart';
import 'package:homely_knock/screens/email_template_page.dart';
import 'package:homely_knock/screens/my_credits_page.dart';
import 'package:homely_knock/screens/one_click_response_page.dart';
import 'package:homely_knock/screens/payment_page.dart';
import 'package:homely_knock/screens/profile_page.dart';
import 'package:homely_knock/screens/review_page.dart';
import 'package:homely_knock/screens/sms_template_page.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<Map> myProfile = [
    {'icon': 'images/user.png', 'title': 'My Profile'},
    {'icon': 'images/reviews.png', 'title': 'Reviews'},
    {'icon': 'images/elite_pro.png', 'title': 'Elite pro'},
    {'icon': 'images/badge.png', 'title': 'Badges'},
    {'icon': 'images/account_details.png', 'title': 'Account Details'},
  ];
  List<Map> communications = [
    {'icon': 'images/one_click.png', 'title': 'One Click Responce'},
    {'icon': 'images/email.png', 'title': 'Email Templates'},
    {'icon': 'images/sms.png', 'title': 'SMS Templates'},
  ];
  List<Map> credits = [
    {'icon': 'images/credit.png', 'title': 'My Credits'},
    {'icon': 'images/invoice.png', 'title': 'Invoices and billing details'},
    {'icon': 'images/payment.png', 'title': 'My payment details'},
  ];
  List<Map> intergrations = [
    {'icon': 'images/email.png', 'title': 'Email'},
    {'icon': 'images/browser.png', 'title': 'Browser'},
  ];

  List profile = [
    ProfilePage(),
    ReviewPage(),
    EliteProPage(),
    BadgePage(),
    AccountDetailsPage()
  ];
  List credits_payment = [MyCreditsPage(), BillingDetailsPage(), PaymentPage()];
  List communication = [
    OneClickResponsePage(),
    EmailTemplatePage(),
    SMSTemplatePage()
  ];
  List intergration_screen = [
    EmailNotificationPage(),
    BrowserNotificationPage()
  ];

  int pageIndex = 0;
  var seletced = 0;

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Profile',
                      style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      seletced = index;
                                      pageIndex = seletced;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  profile[pageIndex]));
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 55.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius:
                                              1, // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(myProfile[index]['icon']),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          myProfile[index]['title'],
                                          style: myStyle(16.sp, FontWeight.w500,
                                              primaryTextClr),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 16.h,
                                ),
                            itemCount: myProfile.length)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Communication',
                      style: myStyle(18.sp, FontWeight.bold, primaryTextClr),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      seletced = index;
                                      pageIndex = seletced;
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            communication[pageIndex],
                                      ));
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 55.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            communications[index]['icon']),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          communications[index]['title'],
                                          style: myStyle(16.sp, FontWeight.w500,
                                              primaryTextClr),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 16.h,
                                ),
                            itemCount: communications.length)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Credits & Payments',
                      style: myStyle(18.sp, FontWeight.bold, primaryTextClr),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      seletced = index;
                                      pageIndex = seletced;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  credits_payment[pageIndex]));
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 55.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(credits[index]['icon']),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          credits[index]['title'],
                                          style: myStyle(16.sp, FontWeight.w500,
                                              primaryTextClr),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 16.h,
                                ),
                            itemCount: credits.length)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Intergrations',
                      style: myStyle(18.sp, FontWeight.bold, primaryTextClr),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      seletced = index;
                                      pageIndex = seletced;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  intergration_screen[
                                                      pageIndex]));
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 55.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            intergrations[index]['icon']),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          intergrations[index]['title'],
                                          style: myStyle(16.sp, FontWeight.w500,
                                              primaryTextClr),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 16.h,
                                ),
                            itemCount: intergrations.length)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 109.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Color(0xffDF2929),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/share.png'),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Save',
                        style: myStyle(16.sp, FontWeight.w500, scaffoldClr),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
            ],
          ),
        ),
      ),
    );
  }
}
