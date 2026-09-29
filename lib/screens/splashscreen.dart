import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizmaster/screens/homescreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homescreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("images/splashbackground.png",fit: BoxFit.cover,)),
          Positioned(top: 210,left: 36, child: Image.asset("images/splashlogo.png",width: 300,height:310,)),
          Positioned(
            top: 510,
            left: 75,
            child: RichText(text: TextSpan(children: [
              TextSpan(text: "Quiz ",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white)),
              TextSpan(text: "Master",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Color(0xFFAC52F7)))

            ])),
          ),
          Positioned(top: 570,left: 106, child: Text("Test Your Knowledge",style: TextStyle(fontSize: 18,color: Color(0xFFA6B6E8),fontWeight: FontWeight.bold),)),
          Positioned(top: 595,left: 100, child: Text("Explore.Learn.Have Fun.",style: TextStyle(fontSize: 18,color:Color(0xFFA6B6E8),fontWeight: FontWeight.bold),)),
          Positioned(
            top: 740,
            left: 60,
            child: SizedBox(
              width: 260,
              child: LinearProgressIndicator(
                value: 0.4, // 40% progress
                minHeight: 8,
                backgroundColor: Color(0xFF26384A),
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF9C3FFF),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )

        ],
      ),
    );
  }
}
