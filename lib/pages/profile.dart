import 'package:dellhack2hire/pages/home_page.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../widget/twoText.dart';
import 'package:flutter/cupertino.dart';
import '../widget/AElevatedButton.dart';
import 'home_page.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // backButton(),
            fillInformationBelow(),
            expendableProfile(),
            SizedBox(height: 20),
            // shirtSize(),
            profileInfo(),
            SizedBox(height: 40),
            qrCode()

            //AElevatedButton(text:"Button 2",onTap:() => Navigator.of(context).pushNamed('/register'),),

            // waveWithLabel(),
            // form(),
            // verticalSpacing(210),
            // loginButton(),
          ],
        ),
      ),
    );
  }

  // Widget backButton() {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.canPop(context);
  //     },
  //     child: Row(
  //       children: [
  //         SizedBox(height: 100,width: 20),
  //         // horizontalSpacing(30),
  //         const Icon(Icons.arrow_back_ios_new)
  //       ],
  //     ),
  //   );
  // }

  Widget fillInformationBelow() {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(
              width: 20,
              height: 60,
            ),
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget profileInfo() {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1.0), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
      child: Column(
        children: [
          twoText(text: 'Lucky Number', desc: '789'),
          SizedBox(height: 20),
          twoText(text: 'Food Voucher', desc: 'RM60'),
          SizedBox(height: 20),
          twoText(text: 'Registered activites', desc: '>')
        ],
      ),
    );
  }

  Widget expendableProfile() {
    return Container(
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(1.0), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: ExpandablePanel(
          header: Row(
            children: [Icon(Icons.person), SizedBox(width: 10), Text('Name')],
          ),
          collapsed: Text(
            'See Dependancies',
            style: TextStyle(color: Colors.grey),
            softWrap: true,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Text(
            'Family Member 1',
            softWrap: true,
          ),
        ));
  }

  Widget qrCode() {
    return QrImage(
      data: 'This is a simple QR code',
      version: QrVersions.auto,
      size: 280,
      gapless: false,
    );
  }
}
