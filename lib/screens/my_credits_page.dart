import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';

class MyCreditsPage extends StatefulWidget {
  MyCreditsPage({Key? key}) : super(key: key);

  @override
  State<MyCreditsPage> createState() => _MyCreditsPageState();
}

class _MyCreditsPageState extends State<MyCreditsPage> {

  bool status = false;
  bool value = false;
  List<Map> details = [
    {
      'id': '24131012',
      'description': '10 credits used to reply',
      'credits': '-10',
      'date': 'Jan 23, 2023'
    },
    {
      'id': '24131012',
      'description': '10 credits used to reply',
      'credits': '-10',
      'date': 'Jan 23, 2023'
    },
    {
      'id': '24131012',
      'description': '10 credits used to reply',
      'credits': '-10',
      'date': 'Jan 23, 2023'
    },
    {
      'id': '24131012',
      'description': '10 credits used to reply',
      'credits': '-10',
      'date': 'Jan 23, 2023'
    },
    {
      'id': '24131012',
      'description': '10 credits used to reply',
      'credits': '-10',
      'date': 'Jan 23, 2023'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        elevation: 0.3,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:  Icon(
              Icons.arrow_back,
              color: buttonClr,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/credits.png',
              width: 30.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'My Credits',
              style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
            ),
          ],
        ),
        actions: [
          Image.asset('images/notification.png'),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Credits',
                style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(height: 16.h,),
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
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' My Profile',
                                      style: myStyle(
                                          14.sp, FontWeight.w400, buttonClr))
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  FlutterSwitch(
                    activeColor: buttonClr,
                    width: 37.0.w,
                    height: 19.0.h,
                    toggleSize: 15.0.r,
                    value: status,
                    borderRadius: 30.0.r,
                    padding: 2.0.w,
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
                    'Auto top-up is',
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: buttonClr.withOpacity(0.3)),
                    child: Text(
                      'Off',
                      style: myStyle(8.sp, FontWeight.w400, buttonClr),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'You have 64 credits',
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              buildContainer('About 5 responses', '30 credits', '\$63.00\n\$2.10/credit'),
              buildContainer('About 10 responses', '60 credits', '\$63.00\n\$2.10/credit'),
              buildContainer('About 120 responses', '120 credits', '\$63.00\n\$2.10/credit'),
              SizedBox(
                height: 32.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: BoxDecoration(
                    color: containerClr,
                    borderRadius: BorderRadius.circular(3.w)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/visa_img.png',
                      width: 30.w,
                    ),
                    Expanded(
                        child: Text(
                          'We ll charge the card ending 251',
                          style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
                        )),
                    Text(
                      'Change',
                      style: myStyle(
                          12.sp, FontWeight.w400, buttonClr),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Redeem coupon',
                style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 34.h,
                    width: 181.w,
                    child: customTextFormField(
                      hintText: 'coupon code',
                    ),
                  ),
                  SizedBox(
                    width: 16.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 72.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: buttonClr, width: 1)),
                    child: Text(
                      'Apply',
                      style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Credit transaction log',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(height: 16.h,),
              Container(
                height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: containerClr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'ID',
                      style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
                    ),
                    Text(
                      'Description',
                      style: myStyle(12.r, FontWeight.w400, primaryTextClr),
                    ),
                    Text(
                      'Credits',
                      style: myStyle(12.r, FontWeight.w400, primaryTextClr),
                    ),
                    Text(
                      'Date',
                      style: myStyle(12.h, FontWeight.w400, primaryTextClr),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration:  BoxDecoration(
                        border: Border(
                            top: BorderSide(color: secondaryTextClr, width: 1),
                            bottom: BorderSide(color: secondaryTextClr, width: 1))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          details[index]['id'],
                          style: myStyle(11.sp, FontWeight.w400, primaryTextClr),
                        ),
                        Text(
                          details[index]['description'],
                          style: myStyle(11.sp, FontWeight.w400, primaryTextClr),
                        ),
                        Text(
                          details[index]['credits'],
                          style: myStyle(11.sp, FontWeight.w400, primaryTextClr),
                        ),
                        Text(
                          details[index]['date'],
                          style: myStyle(11.sp, FontWeight.w400, primaryTextClr),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16.h,
                  ),
                  itemCount: details.length),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(String responce, String credit, String amount) {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: secondaryTextClr.withOpacity(0.3), width: .5),
            bottom: BorderSide(color: secondaryTextClr.withOpacity(0.3), width: .5)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                responce,
                style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
              ),
              Row(
                children: [
                  Image.asset(
                    'images/credits.png',
                    width: 14.w,
                  ),
                  Text(
                    credit,
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                ],
              ),
              Text(
                amount,
                style: myStyle(12.sp, FontWeight.w400, primaryTextClr),
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Checkbox(
                checkColor: scaffoldClr,
                activeColor: buttonClr,
                hoverColor: buttonClr,
                value: value,
                side:  BorderSide(
                    color: buttonClr, width: 2),
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'Auto top-up next time',
                style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                height: 34.h,
                width: 109.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    color: buttonClr),
                child: Text(
                  'Buy Credits',
                  style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}
