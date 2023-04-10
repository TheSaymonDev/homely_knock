import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';

class EmailTemplatePage extends StatelessWidget {
  EmailTemplatePage({Key? key}) : super(key: key);

  List<String> name = ['Bathroom', 'Kitchen', 'Renovation'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Email Templates',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My templates',
                  style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                ),
                Container(
                  height: 28.h,
                  width: 104.w,
                  color: buttonClr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 12.sp,
                        color: scaffoldClr,
                      ),
                      SizedBox(width: 4.w,),
                      Text(
                        'Add template',
                        style: myStyle(12.sp, FontWeight.w400, scaffoldClr),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 52.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: scaffoldClr,
                   border: Border.all(color: Colors.grey[300]!.withOpacity(0.3))
                  ),
                  child: Row(
                    children: [
                      Text(
                        name[index],
                        style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 48,
                        decoration: BoxDecoration(
                            color: buttonClr,
                            borderRadius: BorderRadius.circular(3.r)),
                        child: Text(
                          'Edit',
                          style:
                          myStyle(12.sp, FontWeight.w400, scaffoldClr),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_sweep,
                            color: secondaryTextClr,
                            size: 25.sp,
                          ))
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 8.h,
                ),
                itemCount: name.length),
            SizedBox(
              height: 24.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 14.sp,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Learn more about email templates',
                  style: myStyle(12.sp, FontWeight.w400, secondaryTextClr),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
