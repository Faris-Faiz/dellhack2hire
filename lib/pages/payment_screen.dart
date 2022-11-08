import 'package:dellhack2hire/pages/home_page.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';


import 'login_screen.dart';
import 'register_screen.dart';
import '../widget/progressBar.dart';
import '../widget/textField.dart';
import '../widget/title.dart';
import '../widget/twoText.dart';



class PaymentScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            backButton(context),
            const progressBar(step: 'Payment', currentStep: 4),
            const SizedBox(height: 40),
            fillInformationBelow(),
            const SizedBox(height: 40),
            NGOList(),
            const SizedBox(height: 20),
            profileInfo(),
            const SizedBox(height: 40),
            title(text: 'Select Amount'),
            textField(title: 'Enter Amount'),
            const SizedBox(height: 20),
            title(text: 'Payment Details'),
            paymentChoice(),








            nextButton(context)
            // waveWithLabel(),
            // form(),
            // verticalSpacing(210),
            // loginButton(),
          ],
        ),
      ),
    );
  }

  Widget backButton(context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => RegisterScreen()));
      },
      child: Row(
        children: const [
          SizedBox(height: 100,width: 20),
          // horizontalSpacing(30),
          Icon(Icons.arrow_back_ios_new)
        ],
      ),
    );
  }





  Widget fillInformationBelow() {
    return Column(

      children: [

        Row(
          children: const [
            SizedBox(
              width: 20, height: 20,
            ),
            Text(
              'Profile Summary',
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

  List<String> ngos = ["ngo1","ngo2","ngo3"];
  List<String> ngosDetails = ["ngo nice","ngo good","ngo better"];

  Widget NGOList() {
    return Container(
        margin: EdgeInsets.only(left: 15,right: 15),
        child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
            shrinkWrap: true,
            itemCount: ngos.length,
            itemBuilder: (context, index) {
              return ListTile(

                title: Text(ngos[index]),
                subtitle: Text(ngosDetails[index]),
                trailing: Text('Edit'),

                selectedTileColor: Colors.blue ,
              );
            })


    );
  }



  Widget nextButton(context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: const Color.fromARGB(200, 20, 92, 209),
        ),
        onPressed: () {
          //move to next seciton
          // Provider.of<Auth>(context, listen: false).signup(emailController.text, passwordController.text);
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => home_page()));
        },
        child: const Text('Confirm Payment', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),

      ),
    );
  }

  Widget profileInfo(){
    return Container(
      margin:  EdgeInsets.only(left: 15.0, right: 15.0),
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







}

Widget paymentChoice() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextDropdownFormField(
      options: ["Cash", "Credit","Bank"],
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.arrow_drop_down),
          labelText: "Select Method"),
      dropdownHeight: 120,
    ),
  );
}