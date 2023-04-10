import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/custom_app_bar.dart';
import 'package:homely_knock/reusables/custom_button.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/bottom_nav_bar_page.dart';

class OrderOptionsPage extends StatefulWidget {
  OrderOptionsPage({Key? key}) : super(key: key);

  @override
  State<OrderOptionsPage> createState() => _OrderOptionsPageState();
}

class _OrderOptionsPageState extends State<OrderOptionsPage> {
  List<String> list1 = [
    'Apartment/condo',
    'Commercial Property',
    'House',
    'Small House/cortage'
        'Other'
  ];
  List<String> list2 = [
    'One time clean',
    'Daily',
    'Every other week',
    'Once a month'
        'Other'
  ];
  List<String> list3 = [
    '1 Room',
    '2 Room',
    '3 Room',
    '4 Room',
    'Studio',
    'Other',
  ];
  List<String> list4 = [
    '1 Bathroom',
    '2 Bathroom',
    '3 Bathroom',
    '4 Bathroom',
    'Other',
  ];
  List<String> list5 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    'Other',
  ];

  String? _radioGroupValue1 = 'saymon';
  String? _radioGroupValue2 = 'jahid';
  String? _radioGroupValue3 = 'solayman';
  String? _radioGroupValue4 = 'alamin';
  String? _radioGroupValue5 = 'ratul';

  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  void _onNextButtonPressed() {
    if (_currentPage == 4) {
      // assuming the last page index is 2
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBarPage()),
      );
    } else {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<RadioListTile> answersRadio = [];

  // final controller = PageController(initialPage: 0);
  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Order',
          imgUrl: 'images/notification.png'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'What type of property needs cleaning?',
                            style: myStyle(20, FontWeight.w500, primaryTextClr),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint',
                            style:
                                myStyle(14, FontWeight.w400, secondaryTextClr),
                          ),
                          SizedBox(
                            height: 48.h,
                          ),
                          for (var n in list1)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: SizedBox(
                                child: RadioListTile<String>(
                                  tileColor: scaffoldClr,
                                  selectedTileColor: Color(0xffEEFFF7),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color:
                                              secondaryTextClr.withOpacity(0.1)),
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
                                    style: myStyle(
                                        16, FontWeight.w500, primaryTextClr),
                                  ),
                                  toggleable: true,
                                  selected: _radioGroupValue1 == n,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'How often do you need cleaning services?',
                            style: myStyle(20, FontWeight.w500, primaryTextClr),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint',
                            style:
                                myStyle(14, FontWeight.w400, secondaryTextClr),
                          ),
                          SizedBox(
                            height: 48.h,
                          ),
                          for (var n in list2)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: RadioListTile<String>(
                                tileColor: scaffoldClr,
                                selectedTileColor: Color(0xffEEFFF7),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color:
                                            secondaryTextClr.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(4.r)),
                                activeColor: buttonClr,
                                value: n,
                                groupValue: _radioGroupValue2,
                                onChanged: (val) {
                                  _radioGroupValue2 = val;
                                  setState(() {});
                                },
                                title: Text(
                                  n,
                                  style: myStyle(
                                      16, FontWeight.w500, primaryTextClr),
                                ),
                                toggleable: true,
                                selected: _radioGroupValue2 == n,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'How many bedroom(s) need cleaning?',
                            style: myStyle(20, FontWeight.w500, primaryTextClr),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint',
                            style:
                                myStyle(14, FontWeight.w400, secondaryTextClr),
                          ),
                          SizedBox(
                            height: 48.h,
                          ),
                          for (var n in list3)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: RadioListTile<String>(
                                tileColor: scaffoldClr,
                                selectedTileColor: Color(0xffEEFFF7),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color:
                                            secondaryTextClr.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(4.r)),
                                activeColor: buttonClr,
                                value: n,
                                groupValue: _radioGroupValue3,
                                onChanged: (val) {
                                  _radioGroupValue3 = val;
                                  setState(() {});
                                },
                                title: Text(
                                  n,
                                  style: myStyle(
                                      16, FontWeight.w500, primaryTextClr),
                                ),
                                toggleable: true,
                                selected: _radioGroupValue3 == n,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'How many bathroom(s) need cleaning?',
                            style: myStyle(20, FontWeight.w500, primaryTextClr),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint',
                            style:
                                myStyle(14, FontWeight.w400, secondaryTextClr),
                          ),
                          SizedBox(
                            height: 48.h,
                          ),
                          for (var n in list4)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: RadioListTile<String>(
                                tileColor: scaffoldClr,
                                selectedTileColor: Color(0xffEEFFF7),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color:
                                            secondaryTextClr.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(4.r)),
                                activeColor: buttonClr,
                                value: n,
                                groupValue: _radioGroupValue4,
                                onChanged: (val) {
                                  _radioGroupValue4 = val;
                                  setState(() {});
                                },
                                title: Text(
                                  n,
                                  style: myStyle(
                                      16, FontWeight.w500, primaryTextClr),
                                ),
                                toggleable: true,
                                selected: _radioGroupValue4 == n,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'ow many reception room(s) need cleaning?',
                            style: myStyle(20, FontWeight.w500, primaryTextClr),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint',
                            style:
                                myStyle(14, FontWeight.w400, secondaryTextClr),
                          ),
                          SizedBox(
                            height: 48.h,
                          ),
                          for (var n in list5)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: RadioListTile<String>(
                                tileColor: scaffoldClr,
                                selectedTileColor: Color(0xffEEFFF7),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color:
                                            secondaryTextClr.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(4.r)),
                                activeColor: buttonClr,
                                value: n,
                                groupValue: _radioGroupValue5,
                                onChanged: (val) {
                                  _radioGroupValue5 = val;
                                  setState(() {});
                                },
                                title: Text(
                                  n,
                                  style: myStyle(
                                      16, FontWeight.w500, primaryTextClr),
                                ),
                                toggleable: true,
                                selected: _radioGroupValue5 == n,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            customButton(
              title: _currentPage == 4 ? 'Submit' : 'Next',
              onTap: _onNextButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
