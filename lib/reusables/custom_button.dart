import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/text_style.dart';

class customButton extends StatelessWidget {
   customButton({
    Key? key,
    this.onTap,
    this.title
  }) : super(key: key);

  void Function()? onTap;
  String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r), color: buttonClr),
        child: Text(
         title!,
          style: myStyle(18.sp, FontWeight.w500, scaffoldClr),
        ),
      ),
    );
  }
}