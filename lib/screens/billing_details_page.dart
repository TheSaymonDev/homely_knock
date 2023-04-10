import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';

class BillingDetailsPage extends StatelessWidget {
  BillingDetailsPage({Key? key}) : super(key: key);

  List<Map> downloads = [
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': containerClr
    },
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': buttonClr.withOpacity(0.3)
    },
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': containerClr
    },
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': buttonClr.withOpacity(0.3)
    },
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': containerClr
    },
    {
      'invoice': '3328581',
      'date': 'Jan 11/22',
      'total': '\$214.00',
      'color': buttonClr.withOpacity(0.3)
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
          title: 'Settings',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Invoice And Billing',
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
                      size: 27.sp,
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
                                      text: ' My Profile',
                                      style: myStyle(
                                          14.sp, FontWeight.w400, buttonClr))
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey[300]!.withOpacity(0.3)), bottom: BorderSide(color: Colors.grey[300]!.withOpacity(0.3))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Billing Details',
                      style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
                    ),
                    SizedBox(height: 4.h,),
                    Text(
                      'Your business address for billing & invoicing',
                      style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Contact name',
                    style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customTextFormField(
                      hintText: 'Build Wright',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Address line 1',
                      style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customTextFormField(
                      hintText: '2464 Royal Ln. Jersey 45463',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Address line 2',
                      style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customTextFormField(
                      hintText: '2464 Royal Ln. Jersey 45463',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'City',
                                  style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                customTextFormField(
                                  hintText: 'Oshawa',
                                )
                              ],
                            )),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Postal Code',
                                  style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                customTextFormField(
                                  hintText: 'L1K0B5',
                                )
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Phone Number',
                      style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customTextFormField(
                      hintText: '01888888888',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Address line 2',
                      style: myStyle(16.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customTextFormField(
                      hintText: '01888888888',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 32.h,
              ),
              Text('Invoices', style: myStyle(16.sp, FontWeight.w500, primaryTextClr),),
              SizedBox(height: 16.h,),
              Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: buttonClr.withOpacity(0.3)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Invoice#',
                      style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                    ),
                    Text(
                      'Date',
                      style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                    ),
                    Text(
                      'Total',
                      style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                    ),
                    Text(
                      'Invoice',
                      style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics:  NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration:
                    BoxDecoration(color: downloads[index]['color']),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          downloads[index]['invoice'],
                          style: myStyle(12.sp, FontWeight.w400, secondaryTextClr),
                        ),
                        Text(
                          downloads[index]['date'],
                          style: myStyle(12.sp, FontWeight.w400, secondaryTextClr),
                        ),
                        Text(
                          downloads[index]['total'],
                          style: myStyle(12.sp, FontWeight.w400, secondaryTextClr),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 26.h,
                          width: 82.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: buttonClr),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.arrow_circle_down,
                                color: scaffoldClr,
                                size: 12.sp,
                              ),
                              Text(
                                'Download',
                                style: myStyle(
                                    12.sp, FontWeight.w400, scaffoldClr),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0.h,
                  ),
                  itemCount: downloads.length),
              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
