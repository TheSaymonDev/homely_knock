import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/text_style.dart';

customAppBar({String? title, void Function()? onPressed, String? imgUrl}){
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: scaffoldClr,
    leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_outlined, color: buttonClr,)),
    title: Text(title!, style: myStyle(20.sp, FontWeight.w500, primaryTextClr),),
    actions: [
      Image.asset(imgUrl!),
      SizedBox(width: 10.w,)
    ],
  );
}
