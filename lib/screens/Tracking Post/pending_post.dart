import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/pending_post_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/Tracking%20Post/view_details_post_page.dart';
import 'package:homely_knock/screens/order_page.dart';

class PendingPost extends StatelessWidget {
  PendingPost({Key? key}) : super(key: key);

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
                              '${PendingPostModel.data[index].imgUrl}',
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
                                  '${PendingPostModel.data[index].name}',
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
                                  '${PendingPostModel.data[index].title}',
                                  style: myStyle(
                                      14.sp, FontWeight.w400, secondaryTextClr),
                                ),
                              ],
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ViewDetailsPostPage(
                                  name: PendingPostModel.data[index].name,
                                  imgurl: PendingPostModel.data[index].imgUrl,
                                ),));
                              },
                              child: Container(
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
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Container(
                              height: 34.h,
                              width: 77.w,
                              decoration: BoxDecoration(
                                  color: scaffoldClr,
                                  borderRadius: BorderRadius.circular(3.r),
                                  border: Border.all(color: buttonClr)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('images/edit3.png'),
                                  SizedBox(width: 4.w,),
                                  Text(
                                    'Edit',
                                    style: myStyle(14.sp, FontWeight.w400, buttonClr),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 24.h,
                  ),
              itemCount: PendingPostModel.data.length),
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
