import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const name = 'Marvin Chin';
    const id = '#UM00001';
    const urlImage = 'https://www.worldsbestcatlitter.com/wp-content/uploads/2016/09/cat-affection-blog-image-10.jpg';

    return Drawer(
      child: Material(
        //color not decided: pls change RGB value :(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              id: id,
              // disabled no user page yet
              // onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => UserPage(//insert page here
              //       name: name,
              //       urlImage: urlImage,
              //     ),)
            ),


            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                    // onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                    // onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                  ),

                  //Divider line
                  const SizedBox(height: 24),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 24),

                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                  ),
                ]
              )

            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String id,
    VoidCallback? onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding : padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white)
                  ),
                  const SizedBox(height: 4),
                  Text(
                    id,
                    style: TextStyle(fontSize:14, color: Colors.white)
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white)
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  // disabled as no pages created yet
  // void selectedItem(BuildContext context, int index) {
  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => //insert page here,
  //       ));
  //       break;
  //
  //   }
  // }
}
