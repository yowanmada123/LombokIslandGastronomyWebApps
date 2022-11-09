import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';
import 'package:portfolio_website/widgets/base/button/button_base.dart';

import '../utils/colors.dart';

class FootBar extends StatelessWidget {
  const FootBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 738,
      width: Get.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              height: 480,
              width: Get.width,
              color: ONetralBlack,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height*0.24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gapulo").orelega25s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          SizedBox(
                            width: Get.width*0.178,
                            child: const Text("Gapulo give you a new experience on culinary through food gastronomy").nunito16s().white()),
                          SizedBox(
                            height: Get.height*0.04,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/ic_fb_yellow.png"),
                              SizedBox(
                                width: Get.width*0.007,
                              ),
                              Image.asset("assets/images/ic_ig_yellow.png"),
                              SizedBox(
                                width: Get.width*0.007,
                              ),
                              Image.asset("assets/images/ic_li_yellow.png"),

                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: Get.width*0.13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Menu").orelega25s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Home").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Gastronomy").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Culture").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Tourism Village").nunito16s().white(),
                        ],
                      ),
                      SizedBox(
                        width: Get.width*0.058,
                      ), 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Contact Us").orelega25s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Gapulo.co").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("(0822) 3153 2679").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Surabaya, Indonesia").nunito16s().white(),
                        ],
                      ),
                      SizedBox(
                        width: Get.width*0.058,
                      ), 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Social Media").orelega25s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Facebook").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Instagram").nunito16s().white(),
                          SizedBox(
                            height: Get.height*0.02,
                          ),
                          const Text("Twitter").nunito16s().white(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.center,
              width: Get.width*0.83,
              height: 380,
              decoration: BoxDecoration(
                color: OCalmBlack,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Discover New Information and Culinary Travel Experiences",
                  textAlign: TextAlign.center,
                ).orelega50s().white(),
                SizedBox(
                  height: Get.height*0.026,
                ),
                SizedBox(
                  width: 200,
                  height: 60,
                  child: BaseButton(
                    ontap: (){},
                    text: "Explore Now",
                    outlineRadius: 30,
                    color: OprimaryColor,
                    textStyle: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),

                  ),
                )
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
