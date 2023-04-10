import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class BrowserNotificationPage extends StatefulWidget {
  BrowserNotificationPage({Key? key}) : super(key: key);

  @override
  State<BrowserNotificationPage> createState() =>
      _BrowserNotificationPageState();
}

class _BrowserNotificationPageState extends State<BrowserNotificationPage> {
  List title = [
    'New leads I receive',
    'Customers closing leads Ive responded to',
    'Customers dismissing my response',
    'Customers hiring me'
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
                'Browser notifications',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 26.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 32.h),
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
                              'We can send notifications straight to your web browser. Choose what you’d like to be notified about. Note: If you’d like to control what notifications you receive in our mobile apps, please head to the settings within your app.',
                          style:
                              myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                          children: const [
                            TextSpan(
                                text: ' Click Here',
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
