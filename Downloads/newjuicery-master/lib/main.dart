import 'dart:async';

import 'package:flutter/material.dart';
import 'package:juicerryanandhu/login.dart';


void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Loginscreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        height: double.infinity,
        width: double.infinity,
      child: SizedBox(
        child: Center(child: Image.asset("assets/images/juice-high-resolution-logo-black-transparent (2).png",)))),
    );
  }
}
