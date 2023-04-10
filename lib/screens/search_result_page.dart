import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:homely_knock/models/search_result_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/location_page.dart';

class SearchResultPage extends StatefulWidget {
  SearchResultPage({Key? key}) : super(key: key);

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  var selected=0;
  var groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
        onPressed: (){
          Navigator.pop(context);
        },
        title: 'Search',
        imgUrl: 'images/notification.png'
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h), child: Column(
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
          SizedBox(height: 24.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            height: 390.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: Colors.grey[300]!.withOpacity(0.3))
            ),
            child: Column(
              children: [
                RadioListTile(
                  tileColor: scaffoldClr,
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: buttonClr,
                  value: 'Top Category',
                  groupValue: groupValue,
                  onChanged: (val) {
                    groupValue = val;
                    setState(() {});
                  },
                  title: Text(
                    'Top Categories',
                    style: myStyle(16, FontWeight.w500, primaryTextClr),
                  ),
                   toggleable: true,
                ),
                Expanded(
                  child: AlignedGridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 27.w,
                      itemCount: SearchResultModel.data.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: (){
                          setState(() {
                            selected=index;
                          });
                        },
                        child: Card(
                          elevation: 1,
                          color: scaffoldClr,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r), side: selected==index?BorderSide(color: buttonClr):BorderSide.none),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 16.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${SearchResultModel.data[index].name}', style: myStyle(16.sp, FontWeight.w400, buttonClr),),
                               Image.asset('${SearchResultModel.data[index].imgUrl}'),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),),
    );
  }
}
