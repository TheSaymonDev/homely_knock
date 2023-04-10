import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';

class FaqHelpPage extends StatelessWidget {
  FaqHelpPage({Key? key}) : super(key: key);

  List<Map> popularItem = [
    {
      "title": "What is Ringknock  and how does it work?",
    },
    {
      "title": "What are Credit Pack Subscriptions?",
    },
    {
      "title": "How many responses can a customer receive?",
    },
    {
      "title": "What’s Elite Pro and what’s included?",
    },
    {
      "title": "Refer a friend!",
    },
  ];

  List<Map> guidesItem = [
    {
      "title": "Welcome to Ringknock ",
    },
    {
      "title": "Getting Started",
    },
    {
      "title": "How Ringknock works for professionals",
    },
    {
      "title": "Personalising your One-Click Response",
    },
    {
      "title": "How to use Email Templates",
    },
    {
      "title": "How does Ringknock Connect work?",
    },
    {
      "title": "How to use SMS templates?",
    },
    {
      "title": "How to use Ringknock: Everything you need to knowemplates",
    },
  ];

  List<Map> topicItem = [
    {
      "title": "Profile",
    },
    {
      "title": "How to get hired",
    },
    {
      "title": "For Customers",
    },
    {
      "title": "Managing Responses",
    },
    {
      "title": "Lead Preferences",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Help',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FAQs',
                style: myStyle(20.sp, FontWeight.w500, buttonClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: buttonClr.withOpacity(0.3),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: buttonClr.withOpacity(0.3),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 52.w,
                    height: 50.h,
                    color: buttonClr,
                    child: Icon(
                      Icons.search,
                      color: scaffoldClr,
                      size: 16.sp,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Popular',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                itemCount: popularItem.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            popularItem[index]['title'],
                            style:
                                myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 18.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Divider(
                        thickness: 2,
                        color: secondaryTextClr.withOpacity(0.3),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 24.h,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Guides',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                itemCount: guidesItem.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              guidesItem[index]['title'],
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 18.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Divider(
                        thickness: 2,
                        color: secondaryTextClr.withOpacity(0.3),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 24.h,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Topics',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                itemCount: topicItem.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              topicItem[index]['title'],
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 18.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Divider(
                        thickness: 2,
                        color: secondaryTextClr.withOpacity(0.3),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 24.h,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Still need help?',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Drop us an email and we’ll get you back up and running.',
                style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Email*',
                style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 50.h,
                child: customTextFormField(
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Message',
                style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 92.h,
                child: customTextFormField(
                  hintText: 'Type here',
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              customButton(
                title: 'Send',
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
