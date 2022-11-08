import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'dependency_screen.dart';
import 'login_screen.dart';
import '../widget/progressBar.dart';

import '../widget/textField.dart';


class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            backButton(context),
            progressBar(step: 'Profile', currentStep: 1),
            SizedBox(height: 40),
            fillInformationBelow(),
            textField(title: 'Name'),
            textField(title: 'Employee ID'),
            shirtSize(),

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
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
      },
      child: Row(
        children: [
          SizedBox(height: 100,width: 20),
          // horizontalSpacing(30),
          const Icon(Icons.arrow_back_ios_new)
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
              'Register profile',
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

  Widget emailInput() {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),

      child: TextFormField(
        // controller: emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: const TextStyle(
            fontSize: 16,
          ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          // ),
        ),
        style: const TextStyle(
          fontSize: 20,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your email';
          }
          if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Please enter a valid email';
          }
          return null;
        },
        keyboardType: TextInputType.text,
      ),
    );

  }

  Widget shirtSize() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextDropdownFormField(
        options: ["S", "M","L","XL"],
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: "Shirt Size"),
        dropdownHeight: 120,
      ),
    );
  }


  Widget nextButton(context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Color.fromARGB(200, 20, 92, 209),
        ),
        onPressed: () {
          //move to next seciton
          // Provider.of<Auth>(context, listen: false).signup(emailController.text, passwordController.text);
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => DependencyScreen()));
        },
        child: Text('>', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),

      ),
    );
  }







}