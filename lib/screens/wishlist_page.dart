import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:homely_knock/models/feature_services_model.dart';
import 'package:homely_knock/models/sub_category_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/order_page.dart';

class WishListPage extends StatelessWidget {
  WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Wishlist',
          imgUrl: 'images/post_profile.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sub Category',
                style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 328.h,
                width: double.infinity,
                child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 12.h),
                          height: 88.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: scaffoldClr,
                            border: Border.all( color: Colors.grey[300]!.withOpacity(0.3))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 66.h,
                                width: 66.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffE8F2ED)),
                                child: Image.asset(
                                    '${SubCategoryModel.data[index].imgUrl}'),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${SubCategoryModel.data[index].name}',
                                    style: myStyle(
                                        18.sp, FontWeight.w500, primaryTextClr),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Text(
                                    '${SubCategoryModel.data[index].title}',
                                    style: myStyle(
                                        14.sp, FontWeight.w400, secondaryTextClr),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 25.sp,
                                    color: buttonClr,
                                  )),
                              Container(
                                height: 32.h,
                                width: 86.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: buttonClr,
                                  borderRadius: BorderRadius.circular(3.r)
                                ),
                                child: Text(
                                  'Services',
                                  style:
                                      myStyle(14.sp, FontWeight.w400, scaffoldClr),
                                ),
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 24.h,
                        ),
                    itemCount: SubCategoryModel.data.length),
              ),
              SizedBox(height: 32.h,),
              Text('Services', style: myStyle(20.sp, FontWeight.w500, primaryTextClr),),
              SizedBox(height: 32.h,),
              SizedBox(height: 484.h,
              width: double.infinity,
              child:   AlignedGridView.count(
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
                                  size: 25.sp,
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
                  )),),
              SizedBox(height: 32.h,),
              Text('Company', style: myStyle(20.sp, FontWeight.w500, primaryTextClr),),
              SizedBox(height: 32.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                height: 238.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: containerClr
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/clean1.png'),
                        SizedBox(
                          width: 28.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mr.CLEAN',
                            style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                            ),
                            Row(
                              children: [
                                 Icon(
                                  Icons.star,
                                  color: Color(0xFFEACA23),
                                   size: 18.sp,
                                ),
                                Text(
                                  '4.9 (200)',
                                 style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                                )
                              ],
                            ),
                            Text(
                              'Total 500 work complete',
                             style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                            )
                          ],
                        ),
                      Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              Icons.favorite,
                              color: buttonClr,
                              size: 30.sp,
                            ))
                      ],
                    ),
                    Text(
                      'There are many variations of passages of Lorem Ipsum available.',
                     style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 34.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                            color: buttonClr,
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Text(
                            'Contact',
                           style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 34.h,
                          width: 170.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: buttonClr),
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Text(
                            'View Conpany Profile',
                            style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                height: 238.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: containerClr
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/virulana.png'),
                        SizedBox(
                          width: 28.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Virulana',
                              style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEACA23),
                                  size: 18.sp,
                                ),
                                Text(
                                  '4.9 (200)',
                                  style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                                )
                              ],
                            ),
                            Text(
                              'Total 500 work complete',
                              style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                            )
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              Icons.favorite,
                              color: buttonClr,
                              size: 30.sp,
                            ))
                      ],
                    ),
                    Text(
                      'There are many variations of passages of Lorem Ipsum available.',
                      style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 34.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                              color: buttonClr,
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Text(
                            'Contact',
                            style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 34.h,
                          width: 170.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: buttonClr),
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Text(
                            'View Conpany Profile',
                            style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
