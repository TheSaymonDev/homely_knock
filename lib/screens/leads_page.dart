import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/leads_items_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/leads_details_page.dart';

class LeadsPage extends StatelessWidget {
  LeadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Leads',
      imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
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
                    width: 95.w,
                    height: 50.h,
                    color: buttonClr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Filter',
                          style: myStyle(16.sp, FontWeight.w400, scaffoldClr),
                        ),
                        Icon(
                          Icons.filter_list_sharp,
                          color: scaffoldClr,
                          size: 16.sp,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 24.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: containerClr,
                    borderRadius: BorderRadius.circular(7.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '431 matching leads',
                          style:
                              myStyle(18.sp, FontWeight.w500, primaryTextClr),
                        ),
                        Row(
                          children: [
                            Image.asset('images/service61.png'),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '61 Services',
                              style: myStyle(
                                  16.sp, FontWeight.w400, secondaryTextClr),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              height: 20.h,
                              width: 1.w,
                              color: buttonClr,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                           Icon(Icons.location_on_outlined, size: 18.sp, color: buttonClr,),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('Location',
                                style: myStyle(
                                    16.sp, FontWeight.w400, primaryTextClr))
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 77.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          color: buttonClr,
                          borderRadius: BorderRadius.circular(3.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/edit1.png',
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Edit',
                            style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Showing all 431 leads',
                style: myStyle(18.sp, FontWeight.w400, secondaryTextClr),
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LeadsDetailsPage(
                        name: LeadItemsModel.data[index].name,
                        location: LeadItemsModel.data[index].location,
                        time: LeadItemsModel.data[index].time,
                        imgUrl: LeadItemsModel.data[index].imgUrl,
                      ),));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: AssetImage(
                                  '${LeadItemsModel.data[index].imgUrl}'),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '${LeadItemsModel.data[index].name}',
                                      style: myStyle(
                                          16.sp, FontWeight.w500, primaryTextClr),
                                    ),
                                    SizedBox(
                                      width: 52.w,
                                    ),
                                    Image.asset('images/mans.png'),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      'Plumbing',
                                      style: myStyle(
                                          14.sp, FontWeight.w400, primaryTextClr),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15.sp, color: buttonClr,),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      '${LeadItemsModel.data[index].location}',
                                      style: myStyle(
                                          14.sp, FontWeight.w400, primaryTextClr),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Spacer(),
                            Container(
                              height: 27.h,
                              width: 77.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8FAF1),
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time_filled_rounded,
                                    color: buttonClr,
                                    size: 12.sp,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    '${LeadItemsModel.data[index].time}',
                                    style: myStyle(
                                        12.sp, FontWeight.w400, buttonClr),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Additional Details:',
                              style: myStyle(14.sp, FontWeight.w400, buttonClr),
                              children: [
                                TextSpan(
                                  text:
                                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                  style: myStyle(
                                      14.sp, FontWeight.w400, secondaryTextClr),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Image.asset('images/credit_icon.png'),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '${LeadItemsModel.data[index].credit}',
                              style:
                                  myStyle(14.sp, FontWeight.w500, primaryTextClr),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Divider(color: Colors.grey,)
                      ],
                    ),
                  );
                },
                itemCount: LeadItemsModel.data.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 16.h,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
