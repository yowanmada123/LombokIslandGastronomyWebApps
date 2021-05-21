import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/tab_controller_handler.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/views/about_view.dart';
import 'package:portfolio_website/widgets/bottom_bar.dart';
import 'package:portfolio_website/utils/content_view.dart';
import 'package:portfolio_website/widgets/custom_tab.dart';
import 'package:portfolio_website/views/home_view.dart';
import 'package:portfolio_website/views/projects_view.dart';
import 'package:portfolio_website/widgets/custom_tab_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  ItemScrollController itemScrollController;
  TabController tabController;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  double screenHeight;
  double screenWidth;
  double topPadding;
  double bottomPadding;

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: HomeView(),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content: AboutView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Projects'),
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
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;

    return Scaffold(
      backgroundColor: Color(0xff1e1e24),
      key: scaffoldKey,
      endDrawer: drawer(),
      body: Padding(
        padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        child: ViewWrapper(desktopView: desktopView(), mobileView: mobileView()),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
            controller: tabController,
            tabs: contentViews.map((e) => e.tab).toList()),
        Container(
          height: screenHeight * 0.8,
          child: TabControllerHandler(
            tabController: tabController,
            child: TabBarView(
              controller: tabController,
              children: contentViews.map((e) => e.content).toList(),
              physics: AlwaysScrollableScrollPhysics(),
            ),
          ),
        ),
        BottomBar()
      ],
    );
  }

  Widget mobileView() {
    return  Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                iconSize: screenWidth * 0.08,
                icon: Icon(Icons.menu_rounded),
                color: Colors.white,
                onPressed: () => scaffoldKey.currentState.openEndDrawer()),
            Expanded(
                child: ScrollablePositionedList.builder(
                    itemScrollController: itemScrollController,
                    itemCount: contentViews.length,
                    itemBuilder: (context, index) =>
                        contentViews[index].content))
          ],
        ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [Container(height: screenHeight * 0.1)] +
            contentViews
                .map((e) => Container(
                      child: ListTile(
                        title: Text(e.tab.title),
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
    );
  }


}
