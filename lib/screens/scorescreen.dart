import 'package:flutter/material.dart';
import 'package:quizmaster/screens/homescreen.dart';
import 'package:quizmaster/screens/quizsetupscreen.dart';

class scorescreen extends StatefulWidget {
  int score;
  int length;
  scorescreen({super.key, required this.score, required this.length});

  @override
  State<scorescreen> createState() => _scorescreenState();
}

class _scorescreenState extends State<scorescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001027),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Image.asset("images/thropy.png", height: 250, width: 300),
            SizedBox(height: 7),
            Text(
              "Quiz Complete!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Great Job!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Score",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${widget.score} ".toString(),
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "/ ${widget.length} ".toString(),
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 50,
              width: 260,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>quizsetup()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Icon(Icons.restart_alt,color: Colors.white,size: 30,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Play again",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 260,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white,size: 30,),
                      SizedBox(
                        width: 21,
                      ),
                      Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
