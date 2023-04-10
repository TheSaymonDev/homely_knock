import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class OneClickResponsePage extends StatefulWidget {
  OneClickResponsePage({Key? key}) : super(key: key);

  @override
  State<OneClickResponsePage> createState() => _OneClickResponsePageState();
}

class _OneClickResponsePageState extends State<OneClickResponsePage> {

  bool status = false;
  List<String> items = ['Bathroom', 'Kitchen', 'Renovation'];
  String? selectedValue = 'Bathroom';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'One Click Responce',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:26.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FlutterSwitch(
                  activeColor: buttonClr,
                  width: 52.0.w,
                  height: 27.0.h,
                  toggleSize: 21.0.sp,
                  value: status,
                  borderRadius: 30.0.r,
                  padding: 4.0.w,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'One Click Responce enabled',
                  style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                )
              ],
            ),
            SizedBox(
              height: 36.h,
            ),
            Text(
              'Email template to be used for your one-click response:',
              style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 50.h,
              width: double.infinity,
              decoration:
              BoxDecoration(border: Border.all(color: buttonClr.withOpacity(0.3), width: 0.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedValue!,
                    style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      style: myStyle(18.sp, FontWeight.w500, secondaryTextClr),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                        ),
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Icon(Icons.error_outline),
                SizedBox(
                  width: 4.w,
                ),
                Expanded(
                    child: Text(
                      'You can view, edit and manage your email templates in email templates',
                      style: myStyle(10.sp, FontWeight.w400, primaryTextClr),
                    ))
              ],
            ),
            SizedBox(
              height: 38.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:16.w, vertical: 16.h),
              decoration:
              BoxDecoration(border: Border.all(color: secondaryTextClr.withOpacity(0.3), width: 0.5)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Your one-click response will look like a personal email from you. Any replies to the email will be sent straight to you, meaning you ll hear back from more customers.',
                          textAlign: TextAlign.center,
                          style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height:40.h,
                              width: 40.w,
                              decoration:  BoxDecoration(
                                  shape: BoxShape.circle, color: Color(0xffE8F2ED)),
                              child: Icon(
                                Icons.settings,
                                color: buttonClr,
                                size: 18.sp,
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            SizedBox(
                              child: Text(
                                'Customise your templates for your one-click response',
                                textAlign: TextAlign.center,
                                style: myStyle(12.sp, FontWeight.w500, primaryTextClr),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height:40.h,
                              width: 40.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,color: Color(0xffE8F2ED)),
                              child: Icon(
                                Icons.autorenew_sharp,
                                color: buttonClr,
                                size: 18.sp,
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            SizedBox(
                              child: Text(
                                'Respond to leads by using the one-click response button',
                                textAlign: TextAlign.center,
                                style: myStyle(12.sp, FontWeight.w500, primaryTextClr),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height:40.h,
                              width: 40.w,
                              decoration:  BoxDecoration(
                                  shape: BoxShape.circle, color: Color(0xffE8F2ED)),
                              child: Icon(
                                Icons.timer,
                                color: buttonClr,
                                size: 18.sp,
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            SizedBox(
                              child: Text(
                                'Customers will receive your response instantly',
                                textAlign: TextAlign.center,
                                style: myStyle(12.sp, FontWeight.w500, primaryTextClr),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height:40.h,
                              width: 40.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Color(0xffE8F2ED)),
                              child: Icon(
                                Icons.message,
                                color: buttonClr,
                                size: 18.sp,
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            SizedBox(
                              child: Text(
                                'Follow up with a more personalised message and quote later',
                                textAlign: TextAlign.center,
                                style: myStyle(12.sp, FontWeight.w500, primaryTextClr),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'You can change your one-click response for future leads above',
                    style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
