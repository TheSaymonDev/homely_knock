import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/search_result_page.dart';

class LocationPage extends StatelessWidget {
  LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: (){
            Navigator.pop(context);
          },
          title: 'Location',
          imgUrl: 'images/notification.png'
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(color: Color(0xff9CCDB5))),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchResultPage(),
                              ));
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: scaffoldClr,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width: 30.w,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: TextFormField(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LocationPage(),
                              ));
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: scaffoldClr,
                            hintText: "Location",
                            prefixIcon: Icon(
                              Icons.pin_drop_outlined,
                              size: 25.sp,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                color: buttonClr,
                width: 45.w,
                height: 50.h,
                child: Icon(
                  Icons.search,
                  color: scaffoldClr,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (contex, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                          color: Colors.grey[300]!.withOpacity(0.3)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 16,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Within 50 miles of East York",
                              style: myStyle(
                                  14.sp, FontWeight.w400, primaryTextClr),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1 service",
                              style: myStyle(
                                  14.sp, FontWeight.w400, secondaryTextClr),
                            ),
                            Icon(
                              Icons.edit,
                              size: 16,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 25.h,
                                width: 83.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.r),
                                  color: buttonClr,
                                ),
                                child: Text(
                                  "View on Map",
                                  style: myStyle(
                                      12.sp, FontWeight.w400, scaffoldClr),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(3.r),
                                    border: Border.all(color: buttonClr)),
                                height: 25.h,
                                width: 67.w,
                                child: Text(
                                  "Remove",
                                  style: myStyle(
                                      12.sp, FontWeight.w400, buttonClr),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => SizedBox(
                    height: 2.h,
                  ),
              itemCount: 10),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          '+ Add a location',
          style: myStyle(14.sp, FontWeight.w400, buttonClr),
        )
      ],
        ),
      ),
    );
  }
}
