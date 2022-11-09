import 'package:flutter/material.dart';

class entertainment_page extends StatefulWidget {
  const entertainment_page({Key? key}) : super(key: key);

  @override
  State<entertainment_page> createState() => _entertainment_pageState();
}

class _entertainment_pageState extends State<entertainment_page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Image.asset('assets/images/map.png'),
        iconSize: MediaQuery.of(context).size.height ,
        onPressed: () {
          onButtonPressed();
        },
      ),
    );
  }

  void onButtonPressed() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(children: <Widget>[
          Container(
            // padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  // fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://fsktm.um.edu.my/fsktm/images/HOME/fsktm-front.png')),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          Text('Faculty of Computer Science and Information Technology Day',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(
            '\n\nTime: 10am - 1pm \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet mollis odio. Quisque gravida blandit augue quis maximus. Vestibulum. ',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Register Now'),
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.normal))),
        ]);
      },
    );
  }

  void _selectItem(String name) {
    Navigator.pop(context);
  }
}
