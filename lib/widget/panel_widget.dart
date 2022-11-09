import 'package:carousel_slider/carousel_slider.dart';
import 'package:dellhack2hire/main.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          SizedBox(height: 24),
          buildAboutText(),
          SizedBox(height: 24),
        ],
      );

  Widget buildAboutText() => Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 0),
          buildDragHandle(),
          // Container(
          //   child: new Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       SizedBox(height: 16),
          //       new ElevatedButton(
          //         child: Text('Notification'),
          //         onPressed: () {
          //           print('Pressed');
          //         },
          //       ),
          //       SizedBox(height: 16),
          //       new ElevatedButton(
          //         child: Text('Profile Page'),
          //         onPressed: () {
          //           print('Pressed');
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 18),
          Center(
            child: Text('Upcoming Events',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30)),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),

            //add images here #todo

            items: ['https://laikeisiew1413465.files.wordpress.com/2015/03/elephant-poster_2.jpg',
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cfe8cb0d-9849-4394-8ff3-0b9745005886/d1x9wpg-1e03642b-3805-4b2d-b769-0535f5e66f05.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmZThjYjBkLTk4NDktNDM5NC04ZmYzLTBiOTc0NTAwNTg4NlwvZDF4OXdwZy0xZTAzNjQyYi0zODA1LTRiMmQtYjc2OS0wNTM1ZjVlNjZmMDUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.1TxKuG9ufE6Xi_nIkOvh_GX-jCRmyy-T-lrr8Jwvgyc',
              'https://static-cse.canva.com/blob/524424/Teal-and-Yellow-Church-Icon-Dots-Charity-Event-Fundraising-Poster.jpg',
              'https://piktochart.com/wp-content/uploads/2021/07/Save-the-Date-2.png',
              'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fun-run-marathon-poster-template-design-c81ae382f592330989abd9077fa69ee7_screen.jpg?ts=1637000742'].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.network(
                        '$i',
                        fit: BoxFit.cover,
                      ));
                },
              );
            }).toList(),
          )
        ],
      ));

  Widget buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: 'Testing Phase',
          ),
        ));
        break;
    }
  }
}
