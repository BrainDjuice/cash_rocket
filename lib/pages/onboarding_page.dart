import 'package:cash_rocket/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final int pageCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF485E),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/woman_welcome.png',
                    height: 300,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Welcome to Cash Rocket',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Amet minim mollit non deserunt ullamc est sit aliqua dolor do amet sint '
                          'aliqua dolor velit officia consequat amet minim',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 32),
                        Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: _currentPage,
                            count: 3,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Color(0xFFFF464B),
                              dotColor: Color(0xFFFF464B).withOpacity(0.2),
                              dotHeight: 8,
                              dotWidth: 8,
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            if (_currentPage < pageCount - 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF464B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                        SizedBox(height: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip for now',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/woman_selfie.png',
                    height: 300,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Redeem Your Points',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Amet minim mollit non deserunt ullamc est sit aliqua dolor do amet sint '
                          'aliqua dolor velit officia consequat amet minim',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 32),
                        Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: _currentPage,
                            count: 3,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Color(0xFFFF464B),
                              dotColor: Color(0xFFFF464B).withOpacity(0.2),
                              dotHeight: 8,
                              dotWidth: 8,
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            if (_currentPage < pageCount - 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF464B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                        SizedBox(height: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip for now',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/woman_money.png', height: 300),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Secure Your Money',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Amet minim mollit non deserunt ullamc est sit aliqua dolor do amet sint '
                          'aliqua dolor velit officia consequat amet minim',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 32),
                        Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: _currentPage,
                            count: 3,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Color(0xFFFF464B),
                              dotColor: Color(0xFFFF464B).withOpacity(0.2),
                              dotHeight: 8,
                              dotWidth: 8,
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            if (_currentPage < pageCount - 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF464B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                        SizedBox(height: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip for now',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
