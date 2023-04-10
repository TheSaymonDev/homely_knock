import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/sub_category_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';

class SubCategoryPage extends StatelessWidget {
  SubCategoryPage({Key? key, this.name}) : super(key: key);

  String? name;
  String sortBy = "All Sub Category";
  List<String> list = <String>['All Sub Category'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: name,
          imgUrl: 'images/post_profile.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 36.h,
                  width: 207.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      color: buttonClr),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: buttonClr,
                      elevation: 0,
                      value: sortBy,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 14.sp,
                        color: scaffoldClr,
                      ),
                      style: myStyle(14.sp, FontWeight.w400, scaffoldClr),
                      onChanged: (String? value) {
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 36.h,
                  width: 68.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      color: buttonClr),
                  child: Text(
                    "Filter",
                    style: myStyle(14.sp, FontWeight.w500, scaffoldClr),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
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
              height: 24.h,
            ),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
