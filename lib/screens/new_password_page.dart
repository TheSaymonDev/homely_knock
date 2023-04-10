import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_back_button.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/custom_text_form_field.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/bottom_nav_bar_page.dart';


class NewPasswordPage extends StatefulWidget {
  NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {

  bool _obscureText1= true;
  bool _obscureText2= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: scaffoldClr,
        leading: customBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Forgot password',
          style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26.w
        ),
        child: Column(
          children: [
            Text('Create a new password', style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),),
            SizedBox(height: 52.h,),
            Row(
              children: [
                Text(
                  'Email',
                  style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
                ),
                Text(
                  '*',
                  style: myStyle(14.sp, FontWeight.w600, Color(0xffDA1414)),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            customTextFormField(
              obscureText: _obscureText1,
              hintText: '**********',
              iconButton: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText1 = !_obscureText1;
                    });
                  },
                  icon: _obscureText1 == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Text(
                  'Password',
                  style: myStyle(16.sp, FontWeight.w400, primaryTextClr),
                ),
                Text(
                  '*',
                  style: myStyle(14.sp, FontWeight.w600, Color(0xffDA1414)),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            customTextFormField(
              obscureText: _obscureText2,
              hintText: '**********',
              iconButton: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                  },
                  icon: _obscureText2 == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility)),
            ),
            SizedBox(height: 44.h,),
            customButton(
              title: 'Save',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),));
              },
            )
          ],
        ),
      ),
    );
  }
}
