import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/models/payment_model.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/profile_page.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

var buttonSelected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h), child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ));
                    },
                    child: Image.asset('images/payment_img.png')),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    Text(
                      'Good afternoon',
                      style: myStyle(14.sp, FontWeight.w400, primaryTextClr),
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      'Jacob Jones',
                      style: myStyle(18.sp, FontWeight.w500, primaryTextClr),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                 height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: scaffoldClr,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Icon(
                    Icons.search,
                    color: buttonClr,
                    size: 18,
                  ),
                )
              ],
            ),
            SizedBox(height: 24.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              decoration: BoxDecoration(
                  color: scaffoldClr,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main Wallet',
                        style: myStyle(18.sp, FontWeight.w400, primaryTextClr),
                      ),
                      Text(
                        'My balance',
                        style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                      ),
                      Text(
                        '\$150 00',
                        style: myStyle(14, FontWeight.w400, buttonClr),
                      )
                    ],
                  ),
                  Image.asset('images/card_img.png')
                ],
              ),
            ),
            SizedBox(height: 24.h,),
            Flexible(
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    height: 62,
                    width: double.infinity,
                    decoration:
                    BoxDecoration(color: scaffoldClr, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                    child: Row(
                      children: [
                        Image.asset('${PaymentModel.data[index].imgUrl}'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                         '${PaymentModel.data[index].name}',
                          style: myStyle(16.sp, FontWeight.w500, primaryTextClr),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonSelected = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 75,
                            decoration: BoxDecoration(
                                color: buttonSelected == index
                                    ? buttonClr
                                    : null,
                                borderRadius: BorderRadius.circular(4.r),
                                border: Border.all(
                                    width: 1, color: buttonClr)),
                            child: Text(
                              'Pay Now',
                              style: myStyle(
                                  14.sp,
                                  FontWeight.w400,
                                  buttonSelected == index
                                      ? scaffoldClr
                                      : buttonClr),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemCount: PaymentModel.data.length),
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () {
                showModalBS();
              },
              child: Container(
                height: 57.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    border: Border.all(color: buttonClr, width: 1.w)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 18.sp,
                      color: buttonClr,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Add new card',
                      style:
                      myStyle(14.sp, FontWeight.w400, buttonClr),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 53.h,),
            Row(
              children: [
                Container(
                  height: 51.h,
                  width: 51.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: buttonClr, width: 1.w)),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    size: 16.sp,
                    color: buttonClr,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Expanded(
                    child: Container(
                      height: 51.h,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: buttonClr),
                      child: Text(
                        'Next',
                        style: myStyle(16.sp, FontWeight.w400, scaffoldClr),
                      ),
                    ))
              ],
            ),
          ],
        ),),
      ),
    );
  }

Future showModalBS() {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 26.h),
      height: 396.h,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add New Card',
            style: myStyle(20.sp, FontWeight.w500, primaryTextClr),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Name on card',
            style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
          ),
          SizedBox(
            height: 50.h,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Roronoa Zoro'
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Card number',
            style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
          ),
          SizedBox(
            height: 50.h,
            child: TextField(
                decoration: InputDecoration(
                    hintText: '1234  4567  7890  1234'
                )
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry date',
                      style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: '02/24'
                          )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: myStyle(14.sp, FontWeight.w400, secondaryTextClr),
                    ),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: '•••'
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacer(),
         customButton(
           onTap: (){},
           title: 'Add',
         ),
          Spacer(),
        ],
      ),
    ),
  );
}

}
