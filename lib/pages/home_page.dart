import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widget/navigation_drawer.dart';
import '../widget/panel_widget.dart';
import 'educational_page.dart';
import 'entertainment_page.dart';
import 'f&b_page.dart';
import 'profile.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    final panelHeightOpened = MediaQuery.of(context).size.height * 0.70;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.08;
    final panelController = PanelController();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {
                  print('hello');
                }),
            IconButton(
                icon: Icon(Icons.people),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
                }),
          ],
          bottom: TabBar(
            isScrollable: true,
            // Required
            unselectedLabelColor: Colors.white30,
            // Other tabs color
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            // Space between tabs
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 2),
              // Indicator height
              insets: EdgeInsets.symmetric(horizontal: 48), // Indicator width
            ),
            tabs: [
              Tab(text: 'Entertainments'),
              Tab(text: 'Educational'),
              Tab(text: 'Food & Beverages'),
            ],
          ),
        ),
        body: SlidingUpPanel(
          controller: panelController,
          maxHeight: panelHeightOpened,
          minHeight: panelHeightClosed,
          body: TabBarView(
            children: [
              entertainment_page(),
              educational_page(),
              foodbeverages_page()
            ],
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/tmpMap.png"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          panelBuilder: (controller) => PanelWidget(
            controller: controller,
            panelController: panelController,
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        ),
      ),
    );
  }
}
