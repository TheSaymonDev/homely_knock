import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:homely_knock/models/feature_services_model.dart';
import 'package:homely_knock/models/our_categories_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/category_page.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/order_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = ['images/slider.jpg', 'images/slider.jpg', 'images/slider.jpg'];
  int currentIndex = 0;

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
            Text(
              'Discover',
              style: myStyle(25.sp, FontWeight.w500, primaryTextClr),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Find the best one',
              style: myStyle(12.sp, FontWeight.w300, primaryTextClr),
            ),
            SizedBox(
              height: 25.h,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultPage(),));
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage(),));
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
              height: 25.h,
            ),
           Expanded(
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Stack(
                     alignment: Alignment.bottomCenter,
                     children: [
                       SizedBox(
                         height: 147.h,
                         width: double.infinity,
                         child: CarouselSlider(
                           items: [
                             for (int i = 0; i < images.length; i++)
                               Container(
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                       image: AssetImage(images[i]),
                                       fit: BoxFit.cover),
                                 ),
                               )
                           ],
                           options: CarouselOptions(
                               onPageChanged: (index, reason) {
                                 setState(() {
                                   currentIndex = index;
                                 });
                               },
                               autoPlay: true),
                         ),
                       ),
                       Positioned(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               for (int i = 0; i < images.length; i++)
                                 Container(
                                   height: 6.h,
                                   width: 6.w,
                                   margin: EdgeInsets.symmetric(
                                       horizontal: 3.w, vertical: 3.h),
                                   decoration: BoxDecoration(
                                     color: currentIndex == i ? buttonClr : scaffoldClr,
                                     shape: BoxShape.circle,
                                   ),
                                 )
                             ],
                           ))
                     ],
                   ),
                   SizedBox(
                     height: 35.h,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Our Categories',
                         style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                       ),
                       TextButton(onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(),));
                       }, child: Text(
                         'See All',
                         style: myStyle(14.sp, FontWeight.w400, buttonClr),
                       ))
                     ],
                   ),
                   SizedBox(
                     height: 22.h,
                   ),
                   Container(
                     height: 90.h,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index) => Column(
                           children: [
                             Container(
                               alignment: Alignment.center,
                               height: 60.h,
                               width: 60.w,
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Color(0xffD9F1E5)),
                               child: Image.asset(
                                   OurCategoriesModel.data[index].imgUrl),
                             ),
                             SizedBox(
                               height: 8.h,
                             ),
                             Text(
                               OurCategoriesModel.data[index].categoryName,
                               style: myStyle(
                                   14.sp, FontWeight.w400, secondaryTextClr),
                             )
                           ],
                         ),
                         separatorBuilder: (context, index) => SizedBox(
                           width: 58.w,
                         ),
                         itemCount: OurCategoriesModel.data.length),
                   ),
                   SizedBox(
                     height: 35.h,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Featured Services',
                         style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
                       ),
                       Text(
                         'See All',
                         style: myStyle(14.sp, FontWeight.w400, buttonClr),
                       )
                     ],
                   ),
                   SizedBox(
                     height: 22.h,
                   ),
                   Flexible(
                       child: AlignedGridView.count(
                           physics: NeverScrollableScrollPhysics(),
                           shrinkWrap: true,
                           crossAxisCount: 2,
                           mainAxisSpacing: 15.h,
                           crossAxisSpacing: 15.w,
                           itemCount: FeatureServicesModel.data.length,
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
                                                 '${FeatureServicesModel.data[index].imgUrl}'),
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
                                     '${FeatureServicesModel.data[index].serviceName}',
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
                                     onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(),));
                                     },
                                     child: Container(
                                       alignment: Alignment.center,
                                       height: 33.h,
                                       width: 84.w,
                                       decoration: BoxDecoration(
                                           borderRadius:
                                           BorderRadius.circular(6.r),
                                           color: buttonClr),
                                       child: Text(
                                         'Post a Job',
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
             ),
           )
          ],
        ),
      )),
    );
  }
}
