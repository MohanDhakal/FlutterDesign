import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/newscreen.dart';
import 'package:flutter_bloc_test/screens/songsnepal/onBoarding3.dart';
import 'package:flutter_bloc_test/screens/songsnepal/onboarding2.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingMainScreen extends StatefulWidget {
  OnBoardingMainScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingMainScreenState createState() => _OnBoardingMainScreenState();
}

class _OnBoardingMainScreenState extends State<OnBoardingMainScreen> {
  int intoPage = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: intoPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            child: PageView(
      onPageChanged: (index) {
      },
      controller: pageController,
      children: [
        OnBoarding1(
          onButtonTapped: onButtonTapped,
        ),
        OnBoarding2(
          onButtonTapped: onButtonTapped,
        ),
        OnBoarding3(
          onButtonTapped: onButtonTapped,
        )
      ],
    )));
  }

  void onButtonTapped(int index) {
    // print('index is $index');
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
