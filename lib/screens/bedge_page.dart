import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/bedges_page.dart';

class BadgePage extends StatelessWidget {
  BadgePage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Badge',
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
                                style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                                children: [
                              TextSpan(
                                  text: ' Learn More',
                                  style:
                                      myStyle(14.sp, FontWeight.w400, buttonClr))
                            ])),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              badge_item(
                text: 'The Reviews Badge',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BadgesPage(),
                  ));
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              badge_item(
                text: 'The Elite Pro Badge',
                onTap: () {},
              ),
              SizedBox(
                height: 24.h,
              ),
              badge_item(
                text: 'The Professional Badge',
                onTap: () {},
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.question_mark,
                      size: 18.sp,
                      color: buttonClr,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Why use Ringknock Badges',
                      style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 215,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                color: containerClr,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Icon(
                            Icons.circle,
                            size: 6.sp,
                            color: primaryTextClr,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                            child: Text(
                          'Upgrading your app with a ringknock badge helps boost search engine rankings (SEO) and attractsmore customers',
                          style:
                              myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                        ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Icon(
                            Icons.circle,
                            size: 6.sp,
                            color: primaryTextClr,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                            child: Text(
                          'Visitors to your website will be able to see your reviews and leave their own. This increases customer trust, gaining you more business - for free',
                          style:
                              myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                          overflow: TextOverflow.clip,
                        ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Icon(
                            Icons.circle,
                            size: 6.sp,
                            color: primaryTextClr,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                            child: Text(
                          'Customers are much more likely to hire professionals with 1 or more badges on display',
                          style:
                              myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                        ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class badge_item extends StatelessWidget {
  badge_item({super.key, this.onTap, this.text});
  Function()? onTap;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
          color: scaffoldClr,
          border: Border.all(color: Colors.grey[300]!.withOpacity(0.2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/bark.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text!,
                style: myStyle(14.sp, FontWeight.bold, primaryTextClr),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Amet minim mollit non\ndeseruntullamco est sit',
                style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
              )
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              height: 34.h,
              width: 72.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r), color: buttonClr),
              child: Text(
                'Select',
                style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
              ),
            ),
          )
        ],
      ),
    );
  }
}
