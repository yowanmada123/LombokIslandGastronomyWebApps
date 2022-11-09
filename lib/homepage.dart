import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/utils/content_view.dart';
import 'package:portfolio_website/utils/tab_controller_handler.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/views/about_view.dart';
import 'package:portfolio_website/views/home_view.dart';
import 'package:portfolio_website/views/projects_view.dart';
import 'package:portfolio_website/widgets/custom_tab.dart';
import 'package:portfolio_website/widgets/custom_tab_bar.dart';
import 'package:portfolio_website/widgets/footbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ItemScrollController itemScrollController;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double screenWidth;
  // late double topPadding;
  // late double bottomPadding;
  // late double sidePadding;

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: HomeView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Gastronomy'),
      content: AboutView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Culture'),
      content: ProjectsView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Reference Village'),
      content: ProjectsView(),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content: ProjectsView(),
      
    )
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
    itemScrollController = ItemScrollController();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = Get.width;
    screenHeight = Get.height;
    // topPadding = screenHeight * 0.05;
    // bottomPadding = screenHeight * 0.03;
    // sidePadding = screenWidth * 0.05;

    print('Width: $screenWidth');
    print('Height: $screenHeight');
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      // endDrawer: drawer(),
      body: ViewWrapper(desktopView: desktopView(), mobileView: mobileView()),
    );
  }

  Widget desktopView() {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /// Tab Bar
        Container(
          height: 60,
          child: CustomTabBar(
              controller: tabController,
              tabs: contentViews.map((e) => e.tab).toList()),
        ),

        /// Tab Bar View
        Container(
          height: screenHeight * 0.8,
          child: TabControllerHandler(
            tabController: tabController,
            child: TabBarView(
              controller: tabController,
              children: contentViews.map((e) => e.content).toList(),
            ),
          ),
        ),

        FootBar()
        
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width*0.1),
      child: Container(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                iconSize: screenWidth * 0.08,
                icon: Icon(Icons.menu_rounded),
                color: Colors.white,
                splashColor: Colors.transparent,
                onPressed: () => scaffoldKey.currentState!.openEndDrawer()),
            Expanded(
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.vertical,
                itemScrollController: itemScrollController,
                itemCount: contentViews.length,
                itemBuilder: (context, index) => contentViews[index].content,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Container(
      width: screenWidth * 0.5,
      child: Drawer(
        child: ListView(
          children: [Container(height: screenHeight * 0.1)] +
              contentViews
                  .map((e) => Container(
                child: ListTile(
                  title: Text(
                    e.tab.title,
                    style: Theme.of(context).textTheme.button,
                  ),
                  onTap: () {
                    itemScrollController.scrollTo(
                        index: contentViews.indexOf(e),
                        duration: Duration(milliseconds: 300));
                    Navigator.pop(context);
                  },
                ),
              ))
                  .toList(),
        ),
      ),
    );
  }
}
