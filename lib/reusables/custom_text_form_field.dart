
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';

class customTextFormField extends StatelessWidget {
  customTextFormField({
    Key? key,
    this.hintText,
    this.iconButton,
    this.obscureText=true,
    this.controller
  }) : super(key: key);

  String? hintText;
  IconButton? iconButton;
  bool obscureText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.h,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffE7F6EF),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.r),
              borderSide: BorderSide(
                color: buttonClr.withOpacity(0.3),
                width: .2.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.r),
              borderSide: BorderSide(
                color: buttonClr.withOpacity(0.3),
                width: .2.w,
              ),
            ),
            suffixIcon: iconButton,
            hintText: hintText
        ),
      ),
    );
  }
}
