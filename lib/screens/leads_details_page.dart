import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_maps.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/update_leads_settings_page.dart';

class LeadsDetailsPage extends StatelessWidget {
  LeadsDetailsPage({Key? key, this.name, this.location, this.time, this.imgUrl})
      : super(key: key);

  String? name, location, time, imgUrl;
  List<Map> item = [
    {
      'title': 'What type of property needs cleaning?',
      'subTitle': 'House',
    },
    {
      'title': 'How often do you need cleaning services?',
      'subTitle': 'Every other week',
    },
    {
      'title': 'How many bedroom(s) need cleaning?',
      'subTitle': '3 bedrooms',
    },
    {
      'title': 'How many bathroom(s) need cleaning?',
      'subTitle': '3 bathrooms',
    },
    {
      'title': 'How many reception room(s) need cleaning?',
      'subTitle': '1',
    },
    {
      'title': 'How many staircases need cleaning?',
      'subTitle': 'None',
    },
    {
      'title': 'Which additional service(s) would you like?',
      'subTitle': 'I have pets, No extra requirements',
    },
    {
      'title': 'How many staircases need cleaning?',
      'subTitle': 'None',
    },
    {
      'title': 'When are the best days for cleaning?',
      'subTitle': 'Friday',
    },
    {
      'title': 'Are you ready to hire someone?',
      'subTitle': 'Yes, I need this service ASAP',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: scaffoldClr,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: buttonClr,
            )),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage(imgUrl!),
            ),
            SizedBox(width: 24.w),
            Text(
              name!,
              style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
            ),
          ],
        ),
        actions: [
          Image.asset('images/notification.png'),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: containerClr,
                    borderRadius: BorderRadius.circular(3.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'House Cleaning Service',
                          style:
                              myStyle(18.sp, FontWeight.w500, primaryTextClr),
                        ),
                        Container(
                          height: 27.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: buttonClr.withOpacity(0.3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                size: 12.sp,
                                color: buttonClr,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                time!,
                                style:
                                    myStyle(12.sp, FontWeight.w400, buttonClr),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: buttonClr,
                          size: 18.sp,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          location!,
                          style:
                              myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: buttonClr,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '+122******6***',
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    height: 12.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFE8FAF1),
                        borderRadius: BorderRadius.circular(3.r)),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/righttick.png',
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'verified',
                          style: myStyle(8.sp, FontWeight.w400, buttonClr),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    color: buttonClr,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'your******@email.com',
                    style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                height: 39.h,
                width: double.infinity,
                decoration: BoxDecoration(color: containerClr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 8.r,
                          backgroundColor: buttonClr,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        CircleAvatar(radius: 8.r, backgroundColor: buttonClr),
                        SizedBox(
                          width: 2.w,
                        ),
                        CircleAvatar(
                          radius: 8.r,
                          backgroundColor: buttonClr,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        CircleAvatar(
                          radius: 8.r,
                          backgroundColor: scaffoldClr,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        CircleAvatar(
                          radius: 8.r,
                          backgroundColor: scaffoldClr,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '3/5 professionals have responded',
                          style:
                              myStyle(14.sp, FontWeight.w400, primaryTextClr),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Image.asset('images/vector.png')
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateLeadsSettingsPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 48.h,
                      width: 139.w,
                      decoration: BoxDecoration(
                          color: buttonClr,
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Text(
                        'Contact',
                        style: myStyle(14.sp, FontWeight.w500, scaffoldClr),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48.h,
                    width: 139.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: buttonClr),
                        color: scaffoldClr,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Text(
                      'Not interested',
                      style: myStyle(14.sp, FontWeight.w500, buttonClr),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/credit_icon.png',
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'credit',
                    style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Details',
                style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 16.h,
              ),
              Divider(
                color: secondaryTextClr,
                height: 1,
                thickness: 2,
              ),
              SizedBox(
                height: 16.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item[index]['title'],
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        item[index]['subTitle'],
                        style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                      ),
                    ],
                  );
                },
                itemCount: item.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 24.h,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                  height: 180.h, width: double.infinity, child: CustomMaps()),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Divider(
                  color: secondaryTextClr,
                  height: 5.h,
                  thickness: 3,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
