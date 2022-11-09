import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

import '../../../utils/colors.dart';
import '../../../widgets/base/button/button_base.dart';


class PageThree extends StatelessWidget {
  const PageThree({
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
        Stack(
          children: [
            Container(
              height: screenHeight * 0.89,
              width: screenWidth * 0.77,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: screenWidth* 0.037, top: screenHeight*0.06),
                        width: screenWidth * 0.76,
                        height: screenHeight* 0.45,
                        decoration: BoxDecoration(
                          color: OSecondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: screenWidth * 0.076,
                                  height: screenHeight* 0.153,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.white,
                                  // borderRadius: BorderRadius.all(Radius.circular(100))
                                  // ),
                                  child: Image.asset("assets/images/img_plant.png", fit: BoxFit.fill,)
                                ),
                                SizedBox(height: screenHeight *0.0288),
                                Text("Livestock & farming").nunito15b(),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text("See it nonw...", style: TextStyle(color: OprimaryColor),).nunito15b()),
                              ],
                            ),
                            SizedBox(width: screenHeight * 0.052),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: screenWidth * 0.076,
                                  height: screenHeight* 0.153,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.white,
                                  // borderRadius: BorderRadius.all(Radius.circular(100))
                                  // ),
                                  child: Image.asset("assets/images/img_tools.png", fit: BoxFit.fill,)
                                ),
                                SizedBox(height: screenHeight *0.0288),
                                Text("Tools Preparation").nunito15b(),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text("See it nonw...", style: TextStyle(color: OprimaryColor),).nunito15b()),
                              ],
                            ),
                            SizedBox(width: screenHeight * 0.052),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: screenWidth * 0.076,
                                  height: screenHeight* 0.153,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.white,
                                  // borderRadius: BorderRadius.all(Radius.circular(100))
                                  // ),
                                  child: Image.asset("assets/images/img_platting.png", fit: BoxFit.fill,)
                                ),
                                SizedBox(height: screenHeight *0.0288),
                                Text("Plating On Plate").nunito15b(),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text("See it nonw...", style: TextStyle(color: OprimaryColor),).nunito15b()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: screenWidth * 0.369,
                        height: screenHeight* 0.89,
                        child: Image.asset("assets/images/img_ayam.png", width: screenWidth * 0.5, height: screenHeight* 0.95,)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: screenWidth * 0.418,
                          height: screenHeight * 0.1,
                          child: RichText(
                            text: TextSpan(
                              text: 'How we ',
                              style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Serve',
                                  style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OprimaryColor),
                                ),
                                TextSpan(
                                  text: ' you ?',
                                  style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                ),
                                // TextSpan(
                                //   text: 'Known',
                                //   style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.052),
                        Container(
                          width: screenWidth * 0.397,
                          height: screenHeight * 0.212,
                          child: Text("For the first time, you have to know how to process your food until it is served and ready to eat. Cause knowledge in every process of serving the food until it ready to eat will give you a new culinary experience. starting from farming and breeders and waiting for harvest, followed by the selection of raw materials, preparation of tools, cooking food, and preparation of serving until ready to eat").nunito20m()),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: screenHeight * 0.0851),
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