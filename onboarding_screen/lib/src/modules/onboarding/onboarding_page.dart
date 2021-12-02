import 'package:flutter/material.dart';

import 'onboarding_controller.dart';
import 'pages/screen_1.dart';
import 'pages/screen_2.dart';
import 'pages/screen_3.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

PageController _pageController = PageController();
final controller = OnBoardingController();

@override
void initState() {
  _pageController = PageController(
    keepPage: false,
  );
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: size.height * 0.7,
                  width: size.width,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        controller.setPage(page);
                      });
                    },
                    children: [
                      Screen1(size: size),
                      Screen2(size: size),
                      Screen3(size: size),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 10,
                          width: 85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.decelerate,
                                height: controller.currentPage == 0 ? 10 : 10,
                                width: controller.currentPage == 0 ? 50 : 10,
                                decoration: BoxDecoration(
                                  color: controller.currentPage == 0
                                      ? Colors.indigo.shade700
                                      : Colors.grey[400],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.decelerate,
                                height: controller.currentPage == 1 ? 10 : 10,
                                width: controller.currentPage == 1 ? 50 : 10,
                                decoration: BoxDecoration(
                                  color: controller.currentPage == 1
                                      ? Colors.indigo.shade700
                                      : Colors.grey[400],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.decelerate,
                                height: controller.currentPage == 2 ? 10 : 10,
                                width: controller.currentPage == 2 ? 50 : 10,
                                decoration: BoxDecoration(
                                  color: controller.currentPage == 2
                                      ? Colors.indigo.shade700
                                      : Colors.grey[400],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 120,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 0,
                              primary: Colors.indigo.shade700,
                            ),
                            onPressed: () {
                              if (controller.currentPage != 2) {
                                setState(() {
                                  controller.currentPage++;

                                  _pageController.animateToPage(
                                      controller.currentPage,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                });
                              } else {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              }
                            },
                            child: const Text('Next'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 120,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 2, color: Colors.indigo.shade700),
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 0,
                              primary: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(color: Colors.indigo.shade700),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
