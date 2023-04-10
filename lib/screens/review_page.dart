import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/reviews_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';

class ReviewPage extends StatelessWidget {
  ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Reviews',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffC3F6D7),
                ),
                child: Text(
                  '4.9',
                  style: myStyle(20.sp, FontWeight.w700, primaryTextClr),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffEACA23),
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEACA23),
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEACA23),
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEACA23),
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEACA23),
                    size: 20.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'Overall Rating',
                    style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                  ),
                  Spacer(),
                  Text(
                    '4.9',
                    style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    '(500)',
                    style: myStyle(14.sp, FontWeight.w300, buttonClr),
                  ),
                  Spacer(),
                  Container(
                    width: 95,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: buttonClr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Filter',
                          style: myStyle(16.sp, FontWeight.w400, scaffoldClr),
                        ),
                        SizedBox(
                          width: 8.r,
                        ),
                        Icon(
                          Icons.filter_list_sharp,
                          color: scaffoldClr,
                          size: 18.sp,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Flexible(
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                          decoration: BoxDecoration(
                              color: containerClr,
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage:
                                    AssetImage('${ReviewsModel.data[index].imgUrl}'),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${ReviewsModel.data[index].name}',
                                          style: myStyle(
                                              18.sp, FontWeight.w500, primaryTextClr),
                                        ),
                                        Text(
                                          '${ReviewsModel.data[index].date}',
                                          style: myStyle(14.sp, FontWeight.w400,
                                              Colors.black),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffEACA23),
                                          size: 20.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffEACA23),
                                          size: 20.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffEACA23),
                                          size: 20.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffEACA23),
                                          size: 20.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffEACA23),
                                          size: 20.sp,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text('${ReviewsModel.data[index].ratings}')
                                      ],
                                    ),
                                    SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          '${ReviewsModel.data[index].details}',
                                          maxLines: 6,
                                          overflow: TextOverflow.ellipsis,
                                          style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                    itemCount: ReviewsModel.data.length),
              ),
              SizedBox(
                height: 32.h,
              ),
             customButton(
               title: 'See All Review',
             ),
              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
