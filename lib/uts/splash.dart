// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ikea_shop/uts/home.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [Color(0xff090979), Color(0xff00d4ff)]),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  
                  children: [
                    Image.asset('/ikea.png', height: 300.0, width: 300.0),
                    // SizedBox(height: 10,),
                    Text(
                        'Creating a better everyday life \nfor the many people. ',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        )),
                  ],
                ),
                CircularProgressIndicator(color: Colors.white,)
              ])),
    );
  }
}