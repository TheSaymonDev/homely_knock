import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';

class customBackButton extends StatelessWidget {
  customBackButton({
    Key? key,
    this.onTap
  }) : super(key: key);

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.h),
        child: Container(
          alignment: Alignment.center,
          height: 43.h,
          width: 43.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: scaffoldClr,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1)
              ]),
          child: Align(
            // alignment: Alignment.center,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 18.sp,
                color: buttonClr,
              )),
        ),
      ),
    );
  }
}
