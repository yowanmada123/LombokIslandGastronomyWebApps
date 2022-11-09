import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

import '../../../utils/colors.dart';
import '../../../widgets/base/button/button_base.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({
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
          child: 
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenWidth * 0.388,
                  height: screenHeight * 0.176,
                  child: RichText(
                    text: TextSpan(
                      text: 'Our ',
                      style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Best Features',
                          style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OprimaryColor),
                        ),
                        TextSpan(
                          text: ' You Can Find Here',
                          style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.347,
                  height: screenHeight * 0.07,
                  child: Text("Most people don't know that food can not only be enjoyed in terms of taste but also the story behind the food").nunito20m(),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.034),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset("assets/images/img_recipe.png"),
                  SizedBox(height: screenHeight * 0.02),
                  Text("Delicious Food").nunito30b(),
                  GestureDetector(
                    onTap: (){},
                    child: Text("See it now...", style: TextStyle(color: OprimaryColor),).nunito30b())
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset("assets/images/img_culture.png"),
                  SizedBox(height: screenHeight * 0.03),
                  Text("Delicious Food").nunito30b(),
                  GestureDetector(
                    onTap: (){},
                    child: Text("See it now...", style: TextStyle(color: OprimaryColor),).nunito30b())
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset("assets/images/img_village.png"),
                  SizedBox(height: screenHeight * 0.04),
                  Text("Delicious Food").nunito30b(),
                  GestureDetector(
                    onTap: (){},
                    child: Text("See it now...", style: TextStyle(color: OprimaryColor),).nunito30b())
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.1),

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