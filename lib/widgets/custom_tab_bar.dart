import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/base/extention/ext_text.dart';

class CustomTabBar extends StatelessWidget {
  CustomTabBar(
      {required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tabBarScaling = screenWidth > 1400
        ? 0.55
        : screenWidth > 1100
        ? 0.3
        : 0.4;
    return Stack(
      children:[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 164,
                  child: const Text(
                    "Gastronomi Lombok",
                    textAlign: TextAlign.center,
                    ).orelega20s().white(),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: 
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/ic_profile.jpg",
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            ),
                      )
                      // Image.asset("assets/images/ic_profile.jpg"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                    "Ariel",
                    textAlign: TextAlign.center,
                    ).nunito16s().white(),
                  ],
                )
              ],
            ),
          ),
        ),
        Center(
        child: Container(
          color: Colors.black,
          width: screenWidth * tabBarScaling,
          height: 40,
          // width: screenWidth,
          child: Theme(
            data: ThemeData(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
    
              // padding: EdgeInsets.symmetric(horizontal: 1.0),
              controller: controller,
              indicatorColor: Color.fromARGB(255, 255, 82, 34),
              // labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
              tabs: tabs,
              
            ),
          ),
        ),
      ),
      ] 
    );
  }
}

