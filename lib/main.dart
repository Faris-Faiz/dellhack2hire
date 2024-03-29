import 'package:dellhack2hire/widget/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:dellhack2hire/pages/home_page.dart';
import 'package:dellhack2hire/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Testing Phase'),
    ),
  );
}
