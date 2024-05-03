import 'package:flutter/material.dart';
import 'package:todolist_app/shared/theme/font.dart';
import 'package:todolist_app/pages/onboardingscreen/intro_page1.dart';
import 'package:todolist_app/pages/onboardingscreen/intro_page2.dart';
import 'package:todolist_app/pages/onboardingscreen/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const routeName = '/';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          // dot indicator
          Container(
            alignment: Alignment(0, 0.55),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Color(0xFF1D62FC),
                dotColor: Colors.grey,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 320,
              height: 50,
              margin: const EdgeInsets.only(
                bottom: 75,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: currentPage == 2 // Check if on IntroPage3
                        ? OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                            child: Text('BACK', style: sectionHeader),
                          )
                        : OutlinedButton(
                            onPressed: () {
                              _controller.jumpToPage(2);
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'BACK',
                              style: sectionHeader,
                            ),
                          ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: currentPage == 2 // Check if on IntroPage3
                        ? ElevatedButton(
                            onPressed: () {
                              // Handle Register button press
                              Navigator.pushNamed(context, '/login');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color.fromARGB(0, 136, 117, 255),
                            ),
                            child: Text(
                              'GET STARTED',
                              style: sectionHeader,
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color.fromARGB(0, 136, 117, 255),
                            ),
                            child: Text(
                              'NEXT',
                              style: sectionHeader,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
