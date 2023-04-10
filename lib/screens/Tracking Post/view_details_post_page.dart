import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/view_details_post_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';

class ViewDetailsPostPage extends StatelessWidget {
  ViewDetailsPostPage({Key? key, this.name, this.imgurl}) : super(key: key);

  String? name, imgurl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Order Name',
          imgUrl: 'images/post_profile.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Showing all 120 request',
                  style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                ),
                Container(
                  width: 74.w,
                  height: 34.h,
                  color: buttonClr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_list_sharp,
                        color: scaffoldClr,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Filter',
                        style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                      ),
                    ],
                  ),
                )
              ],
            ),
           Expanded(
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   SizedBox(
                     height: 24.h,
                   ),
                   Container(
                     height: 211.h,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage(imgurl!), fit: BoxFit.cover)),
                   ),
                   SizedBox(
                     height: 16.h,
                   ),
                   Text(
                     name!,
                     style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                   ),
                   SizedBox(
                     height: 4.h,
                   ),
                   Text(
                     'Contrary to popular belief, Lorem Ipsum is not simply random text.',
                     style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                   ),
                   SizedBox(
                     height: 32.h,
                   ),
                   Flexible(
                       child: ListView.separated(
                         physics: NeverScrollableScrollPhysics(),
                           shrinkWrap: true,
                           itemBuilder: (context, index) => Container(
                             padding: EdgeInsets.symmetric(
                                 vertical: 16.h, horizontal: 8.w),
                             height: 147.h,
                             width: double.infinity,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5.r),
                                 color: containerClr),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(
                                   '${ViewDetailsPostModel.data[index].name}',
                                   style: myStyle(
                                       18.sp, FontWeight.w500, primaryTextClr),
                                 ),
                                 Row(
                                   children: [
                                     Icon(
                                       Icons.star,
                                       size: 14.sp,
                                       color: Color(0xffEACA23),
                                     ),
                                     SizedBox(
                                       height: 4.w,
                                     ),
                                     Text(
                                       '${ViewDetailsPostModel.data[index].rating}',
                                       style: myStyle(14.sp, FontWeight.w400,
                                           secondaryTextClr),
                                     ),
                                   ],
                                 ),
                                 Text(
                                   '${ViewDetailsPostModel.data[index].title}',
                                   style: myStyle(
                                       14.sp, FontWeight.w400, secondaryTextClr),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       alignment: Alignment.center,
                                       height: 34.h,
                                       width: 81.w,
                                       decoration: BoxDecoration(
                                           borderRadius:
                                           BorderRadius.circular(3.r),
                                           color: buttonClr),
                                       child: Text(
                                         'Accept',
                                         style: myStyle(
                                             14.sp, FontWeight.w400, scaffoldClr),
                                       ),
                                     ),
                                     Container(
                                       alignment: Alignment.center,
                                       height: 34.h,
                                       width: 76.w,
                                       decoration: BoxDecoration(
                                           border: Border.all(color: buttonClr),
                                           borderRadius:
                                           BorderRadius.circular(3.r),
                                           color: Colors.transparent),
                                       child: Text(
                                         'Reject',
                                         style: myStyle(
                                             14.sp, FontWeight.w400, buttonClr),
                                       ),
                                     ),
                                     Container(
                                       alignment: Alignment.center,
                                       height: 34.h,
                                       width: 171.w,
                                       decoration: BoxDecoration(
                                           border: Border.all(color: buttonClr),
                                           borderRadius:
                                           BorderRadius.circular(3.r),
                                           color: Colors.transparent),
                                       child: Text(
                                         'View Conpany Profile',
                                         style: myStyle(
                                             14.sp, FontWeight.w400, buttonClr),
                                       ),
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ),
                           separatorBuilder: (context, index) => SizedBox(
                             height: 24.h,
                           ),
                           itemCount: ViewDetailsPostModel.data.length))
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
