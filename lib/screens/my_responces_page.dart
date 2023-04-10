import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/my_respoces_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class MyResponcePage extends StatelessWidget {
  MyResponcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'My Responses',
      imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                height: 24.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: containerClr),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '431 Pending Responces',
                          style:
                              myStyle(18.sp, FontWeight.w500, primaryTextClr),
                        ),
                        Text(
                          'Updated just now',
                          style:
                              myStyle(14.sp, FontWeight.w400, primaryTextClr),
                        )
                      ],
                    ),
                    Spacer(),
                   Image.asset('images/refresh.png'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Refresh',
                      style: myStyle(14.sp, FontWeight.w500, primaryTextClr),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Flexible(
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.r,
                                      backgroundImage: AssetImage(
                                          '${MyResponcesModel.data[index].imgUrl}'),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${MyResponcesModel.data[index].name}',
                                                style: myStyle(
                                                    14.sp,
                                                    FontWeight.w500,
                                                    primaryTextClr),
                                              ),
                                            Row(
                                              children: [
                                                Image.asset('images/resto.png'),
                                                Text(
                                                  'Kitchen Refurbishment',
                                                  style: myStyle(
                                                      14.sp,
                                                      FontWeight.w400,
                                                      primaryTextClr),
                                                ),
                                              ],
                                            ),
                                              Container(
                                                height: 27.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                    color: containerClr,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.r)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.circle,
                                                      color: Colors.pink,
                                                      size: 18.sp,
                                                    ),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      'Pending',
                                                      style: myStyle(
                                                          12.sp,
                                                          FontWeight.w400,
                                                          primaryTextClr),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.green,
                                                size: 16.sp,
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              Text(
                                                '${MyResponcesModel.data[index].location}',
                                                style: myStyle(
                                                    12.sp,
                                                    FontWeight.w400,
                                                    secondaryTextClr),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16.sp,
                                ),
                                Text(
                                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit ...',
                                  style: myStyle(
                                      12.sp, FontWeight.w400, secondaryTextClr),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                  height: 30.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color: containerClr),
                                  child: Row(
                                    children: [
                                      Image.asset('images/right1.png'),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Text(
                                        'You send Kumar an email',
                                        style: myStyle(12.sp, FontWeight.w400,
                                            secondaryTextClr),
                                      ),
                                      Spacer(),
                                      Text('15h ago',
                                          style: myStyle(14.sp, FontWeight.w400,
                                              primaryTextClr))
                                    ],
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 24.h,
                          ),
                      itemCount: MyResponcesModel.data.length)),
            ],
          ),
        ),
      ),
    );
  }
}
