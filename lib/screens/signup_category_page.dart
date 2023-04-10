import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/registration_page.dart';

class SignupCategoryPage extends StatefulWidget {
  SignupCategoryPage({Key? key}) : super(key: key);

  @override
  State<SignupCategoryPage> createState() => _SignupCategoryPageState();
}

class _SignupCategoryPageState extends State<SignupCategoryPage> {

  List<String> list1 = [
    'Become a User',
    'Become a Professional',
  ];
  String? _radioGroupValue1 = 'saymon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scaffoldClr,
        leading: customBackButton(
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose Your Account Category', style: myStyle(24, FontWeight.w500, primaryTextClr),),
            SizedBox(height: 12.h,),
            Text('Choose become a professional option and continue', style: myStyle(14, FontWeight.w400, buttonClr),),
            SizedBox(height: 56.h,),
            for (var n in list1)
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: RadioListTile<String>(
                  tileColor: scaffoldClr,
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey[300]!.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(4.r)),
                  activeColor: buttonClr,
                  value: n,
                  groupValue: _radioGroupValue1,
                  onChanged: (val) {
                    _radioGroupValue1 = val;
                    setState(() {});
                  },
                  title: Text(
                    n,
                    style: myStyle(16, FontWeight.w400, primaryTextClr),
                  ),
                  toggleable: true,
                  selected: _radioGroupValue1 == n,
                ),
              ),
            customButton(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage(),));
            }, title: 'Next',),
          ],
        ),
      ),
    );
  }
}
