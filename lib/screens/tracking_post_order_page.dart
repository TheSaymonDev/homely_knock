import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/Tracking%20Post/complete_post.dart';
import 'package:homely_knock/screens/Tracking%20Post/pending_post.dart';
import 'package:homely_knock/screens/location_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';

class TrackingPostOrderPage extends StatefulWidget {
  TrackingPostOrderPage({Key? key}) : super(key: key);

  @override
  State<TrackingPostOrderPage> createState() => _TrackingPostOrderPageState();
}

class _TrackingPostOrderPageState extends State<TrackingPostOrderPage> {

  List myList1 = ['Pending Post', 'Complete Post'];
  List myList2 = [PendingPost(), CompletePost()];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Tracking Post/Order',
          imgUrl: 'images/post_profile.png'),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h), child: Column(
        children: [
          Container(
            height: 50.h,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 26.w,),
              itemCount: myList1.length,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 175.w,
                  decoration: BoxDecoration(
                      color: current==index? buttonClr:null,
                      border: current==index?  null : Border.all(width: 1.5, color: buttonClr)
                  ),
                  child: Text(myList1[index], style: myStyle(14.sp, FontWeight.w400, current==index?scaffoldClr:secondaryTextClr),),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.h,),
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
          SizedBox(height: 30.h,),
          Expanded(
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: myList2[current],
              ))
        ],
      ),),
    );
  }
}
