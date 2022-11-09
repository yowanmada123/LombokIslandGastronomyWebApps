import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/pages/home/page/page_three.dart';
import 'package:portfolio_website/utils/colors.dart';
import 'package:portfolio_website/utils/theme_selector.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/widgets/base/button/button_base.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

import '../../widgets/footbar.dart';
import 'page/page_one.dart';
import 'page/page_two.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = Get.height;
    screenWidth = Get.width;

    return ViewWrapper(desktopView: desktopView(), mobileView: mobileView());
  }

  Widget desktopView() {
    return ListView(
      children: [
        PageOne(screenHeight: screenHeight, screenWidth: screenWidth),
        Divider(),
        PageTwo(screenHeight: screenHeight, screenWidth: screenWidth,),
        Divider(),
        PageThree(screenHeight: screenHeight, screenWidth: screenWidth,),
        Divider(),
        PageThree(screenHeight: screenHeight, screenWidth: screenWidth,),
        Divider(),

        FootBar()
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [profilePicture(), SizedBox(height: screenHeight * 0.02), header(30), SizedBox(height: screenHeight * 0.01), subHeader('Computer Scientist - App Developer - Flutter Enthusiast', 15)],
    );
  }

  double getImageSize() {
    if (screenWidth > 1600 && screenHeight > 800) {
      return 400;
    } else if (screenWidth > 1300 && screenHeight > 600) {
      return 350;
    } else if (screenWidth > 1000 && screenHeight > 400) {
      return 300;
    } else {
      return 250;
    }
  }

  double getFontSize(bool isHeader) {
    double fontSize = screenWidth > 950 && screenHeight > 550 ? 30 : 25;
    return isHeader ? fontSize * 2.25 : fontSize;
  }

  Widget profilePicture() {
    return Container(
      height: getImageSize(),
      width: getImageSize(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getImageSize() / 2),
        child: Image.asset(
          'assets/picture.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget header(double fontSize) {
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: ThemeSelector.selectHeadline(context),
        children: <TextSpan>[
          TextSpan(text: 'Hi, my name is '),
          TextSpan(text: 'Florian', style: TextStyle(color: Color(0xff21a179))),
          TextSpan(text: '!'),
        ],
      ),
    );
  }

  Widget subHeader(String text, double fontSize) {
    return Text(text, style: ThemeSelector.selectSubHeadline(context));
  }
}




