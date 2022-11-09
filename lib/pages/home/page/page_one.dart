import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

import '../../../utils/colors.dart';
import '../../../widgets/base/button/button_base.dart';


class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.15),
      ],
    );
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