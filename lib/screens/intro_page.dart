import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/reusables/text_style.dart';
import 'package:homely_knock/screens/create_account_page.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  void _onNextButtonPressed() {
    if (_currentPage == 2) {
      // assuming the last page index is 2
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CreateAccountPage()),
      );
    } else {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<String> images = ['images/intro2.png', 'images/intro3.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 483.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/intro2.png'))),
                        ),
                        Spacer(),
                        Text(
                          'Easy to your on demand service',
                          style:
                              myStyle(24.sp, FontWeight.w500, secondaryTextClr),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.w),
                          child: Text(
                            'Ringknock is a online on demand  service. Its has as into the 50k+ services. you can buy every onto a services',
                            style: myStyle(
                                15.sp, FontWeight.w300, secondaryTextClr),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 483.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/intro3.png'))),
                        ),
                        Spacer(),
                        Text(
                          'Easy Payment',
                          style:
                          myStyle(24.sp, FontWeight.w500, secondaryTextClr),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.w),
                          child: Text(
                            'Ringknock is a online on demand  service. Its has as into the 50k+ services. you can buy every onto a services',
                            style: myStyle(
                                15.sp, FontWeight.w300, secondaryTextClr),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 483.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/intro2.png'))),
                        ),
                        Spacer(),
                        Text(
                          'Easy to your on demand service',
                          style:
                          myStyle(24.sp, FontWeight.w500, secondaryTextClr),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.w),
                          child: Text(
                            'Ringknock is a online on demand  service. Its has as into the 50k+ services. you can buy every onto a services',
                            style: myStyle(
                                15.sp, FontWeight.w300, secondaryTextClr),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 18.sp,
                      color: buttonClr,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Indicator(
                        positionIndex: 0,
                        currentIndex: _currentPage,
                      ),
                      Indicator(
                        positionIndex: 1,
                        currentIndex: _currentPage,
                      ),
                      Indicator(
                        positionIndex: 2,
                        currentIndex: _currentPage,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _onNextButtonPressed,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 18.sp,
                      color: buttonClr,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 74.h,
            )
          ],
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int positionIndex;
  final int currentIndex;

  Indicator({required this.positionIndex, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: positionIndex == currentIndex
            ? buttonClr
            : Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
