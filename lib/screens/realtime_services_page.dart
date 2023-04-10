import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:homely_knock/models/real_time_services_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';
import 'package:homely_knock/reusables/text_style.dart';

class RealTimeServicesPage extends StatelessWidget {
  RealTimeServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
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
              height: 22.h,
            ),
            Text(
              'Real Time Services',
              style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
                child: AlignedGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 15.w,
                    itemCount: RealTimeServicesModel.data.length,
                    itemBuilder: (context, index) => Card(
                      elevation: 1,
                      color: scaffoldClr,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              height: 115.h,
                              width: 210.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          '${RealTimeServicesModel.data[index].imgUrl}'),
                                      fit: BoxFit.cover)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: buttonClr,
                                  )),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              '${RealTimeServicesModel.data[index].serviceName}',
                              style: myStyle(
                                  14.sp, FontWeight.w400, primaryTextClr),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '200+ Company work',
                              style: myStyle(
                                  10.sp, FontWeight.w400, secondaryTextClr),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                height: 33.h,
                                width: 84.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(6.r),
                                    color: buttonClr),
                                child: Text(
                                  'Book Now',
                                  style: myStyle(
                                      12.sp, FontWeight.w500, scaffoldClr),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )))
          ],
        ),
      )),
    );
  }
}
