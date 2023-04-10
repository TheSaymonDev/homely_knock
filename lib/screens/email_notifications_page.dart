import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class EmailNotificationPage extends StatefulWidget {
  EmailNotificationPage({Key? key}) : super(key: key);

  @override
  State<EmailNotificationPage> createState() => _EmailNotificationPageState();
}

class _EmailNotificationPageState extends State<EmailNotificationPage> {
  List title = [
    'New leads I receive',
    'Customers closing leads Ive responded to',
    'Customers dismissing my response',
    'Customers hiring me',
    'Customers reading a message I sent',
    'Customers requesting a call from me',
    'Customers dismissing my response',
    'Customers requesting me to contact them',
    'Customers viewing my profile',
    'Customers viewing my website',
    'Customers viewing contact details on my profile',
    'A summary of leads Im matched to each day',
    'Customers sending me a message',
    'New reviews on my profile',
    'New reviews from other sources',
    'Services similar to mine I can get more leads from',
    'Promotional emails'
  ];

  bool status = true;

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
                'Email notifications',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 26.h,
              ),
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(color: containerClr),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/mark.png'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text:
                              'Control what youd like us to email you about. Not getting our e-mails? ',
                          style:
                              myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                          children: const [
                            TextSpan(
                                text: 'Click Here',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Email me about:',
                style: myStyle(16.sp, FontWeight.w500, secondaryTextClr),
              ),
              SizedBox(
                height: 16.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 53.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.1))),
                    child: ListTile(
                        title: Text(
                          title[index],
                          style:
                              myStyle(16.sp, FontWeight.w500, primaryTextClr),
                        ),
                        trailing: Switch(
                          onChanged: (value) {
                            setState(() {
                              status = value;
                            });
                          },
                          value: status,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xFF47BF9C),
                          inactiveThumbColor: containerClr,
                        )),
                  );
                },
                itemCount: title.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 16.h,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Cancel',
                    style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                    height: 45.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                        color: buttonClr,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/tick_mark.png'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Save',
                          style: myStyle(16.sp, FontWeight.w500, scaffoldClr),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
