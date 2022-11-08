import 'package:flutter/material.dart';



import 'payment_screen.dart';
import 'register_screen.dart';
import '../widget/progressBar.dart';



class NGOScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            backButton(context),
            const progressBar(step: 'Choose NGO', currentStep: 3),
            const SizedBox(height: 40),
            fillInformationBelow(),
            const SizedBox(height: 20),
            NGOList(),
            const SizedBox(height: 20),





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
              width: 20, height: 60,
            ),
            Text(
              'Pick an NGO to pledge to',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Text(
              'Please enter credentials to proceed',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
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
        decoration: BoxDecoration(

        ),
        child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
            shrinkWrap: true,
            itemCount: ngos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text(ngos[index][0]),),
                title: Text(ngos[index]),
                subtitle: Text(ngosDetails[index]),

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
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => PaymentScreen()));
        },
        child: const Text('>', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),

      ),
    );
  }







}