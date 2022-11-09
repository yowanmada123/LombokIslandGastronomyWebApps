import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/colors.dart';
import 'package:portfolio_website/utils/theme_selector.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/widgets/base/button/button_base.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

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
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.09),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.24,
                      height: screenHeight * 0.41,
                      child: RichText(
                        text: TextSpan(
                          text: 'Art ',
                          style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OprimaryColor),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Behind The Food is',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                            ),
                            TextSpan(
                              text: ' Rarely ',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OprimaryColor),
                            ),
                            TextSpan(
                              text: 'Known',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.026),
                    Container(width: screenWidth * 0.265, height: screenHeight * 0.14, child: const Text("Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served").nunito20m().black()),
                    SizedBox(height: screenHeight * 0.026),
                    BaseButton(
                      ontap: () {},
                      width: 0.13 * screenWidth,
                      height: 0.065 * screenHeight,
                      text: "Explore The Food",
                      textSize: 18,
                      color: OprimaryColor,
                      outlineRadius: 30,
                    )
                  ],
                ),
              ),
              Expanded(flex: 2, child: Image.asset("assets/images/ic_penari.jpg")),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                    ItemInFirstPage(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      description: 'Contains a list of foods and food backgrounds', 
                      icon: 'assets/images/ic_recipe.png', 
                      title: 'Recipes',
                    ),
                    SizedBox(height: screenHeight * 0.08),
                    ItemInFirstPage(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      description: 'Contains a list of cultures from the island of Lombok',
                      title: 'Culture', icon: 'assets/images/ic_culture.png',
                    ),
                    SizedBox(height: screenHeight * 0.08),
                    ItemInFirstPage(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      description: 'Contains information about the referral village',
                      title: 'Village', icon: 'assets/images/ic_village.png',
                    ),
                  ]),
                ),
              )

              // SizedBox(width: screenWidth * 0.026),
              // Container(child: const Text("Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served"))
            ],
          ),
        )
        // NavigationArrow(isBackArrow: false),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       width: screenWidth * 0.45,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           header(getFontSize(true)),
        //           SizedBox(height: screenHeight * 0.05),
        //           subHeader('Computer Scientist.', getFontSize(false)),
        //           SizedBox(height: screenHeight * 0.01),
        //           subHeader('App Developer.', getFontSize(false)),
        //           SizedBox(height: screenHeight * 0.01),
        //           subHeader('Flutter Enthusiast.', getFontSize(false)),
        //           SizedBox(height: screenHeight * 0.1),
        //         ],
        //       ),
        //     ),
        //     SizedBox(width: screenWidth * 0.03),
        //     profilePicture()
        //   ],
        // )
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

class ItemInFirstPage extends StatelessWidget {
  const ItemInFirstPage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    this.ontap,
    required this.title,
    required this.description, required this.icon,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final Function()? ontap;
  final String title;
  final String description;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.03,
                height: screenWidth * 0.03,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)), border: Border.all(color: Colors.black)),
                child: Image.asset(icon),
              ),
              SizedBox(width: screenHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title).nunito20b(),
                  SizedBox(height: screenHeight * 0.005),
                  Container(width: screenWidth * 0.08, child: Text(description).nunito15s()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
