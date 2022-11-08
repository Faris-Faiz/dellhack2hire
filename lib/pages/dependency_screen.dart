import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';



import 'ngo_screen.dart';
import 'register_screen.dart';
import '../widget/progressBar.dart';
import '../widget/textField.dart';


class DependencyScreen extends StatelessWidget {
  const DependencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            backButton(context),
            const progressBar(step: 'Dependencies', currentStep: 2),
            const SizedBox(height: 40),
            fillInformationBelow(),
            const SizedBox(height: 20),
            dependencyTotal(),
            const textField(title: 'Name'),
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
              'Add Dependencies',
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



  Widget shirtSize() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextDropdownFormField(
        options: const ["S", "M","L","XL"],
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: "Shirt Size"),
        dropdownHeight: 120,
      ),
    );
  }

  Widget dependencyTotal() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextDropdownFormField(
        options: const ["1", "2","3","4"],
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: "Dependencies"),
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
          backgroundColor: const Color.fromARGB(200, 20, 92, 209),
        ),
        onPressed: () {
          //move to next seciton
          // Provider.of<Auth>(context, listen: false).signup(emailController.text, passwordController.text);
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NGOScreen()));
        },
        child: const Text('>', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),

      ),
    );
  }







}