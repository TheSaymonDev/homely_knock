import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/complete_post_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/order_page.dart';

class CompletePost extends StatelessWidget {
  CompletePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: scaffoldClr,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                    Border.all(color: Colors.grey[300]!.withOpacity(0.3))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          '${CompletePostModel.data[index].imgUrl}',
                          height: 89.h,
                          width: 80.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${CompletePostModel.data[index].name}',
                              style:
                              myStyle(17.sp, FontWeight.w500, primaryTextClr),
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              'Contrary to popular belief Lorem Ipsum\nis not simply random text',
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              '${CompletePostModel.data[index].title}',
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                            ),
                          ],
                        )
                      ],
                    ),

                    Center(
                      child:  Container(
                        alignment: Alignment.center,
                        height: 34.h,
                        width: 115.w,
                        decoration: BoxDecoration(
                            color: buttonClr,
                            borderRadius: BorderRadius.circular(3.r)),
                        child: Text(
                          'View Details',
                          style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 24.h,
              ),
              itemCount: CompletePostModel.data.length),
        ),
        SizedBox(height: 32.h,),
        customButton(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(),));
          },
          title: 'Add a new job post',
        )
      ],
    );
  }
}
