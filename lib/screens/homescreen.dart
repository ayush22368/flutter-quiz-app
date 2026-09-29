import 'package:flutter/material.dart';
import 'package:quizmaster/screens/quizsetupscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000D21),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 86),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Quiz ",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "Master",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFAC52F7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Test Your Knowledge",
              style: TextStyle(
                fontSize: 19,
                color: Color(0xFFA6B6E8),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 19),
            SizedBox(width: 280, child: Image.asset("images/quizsetuplogo.png",)),
            SizedBox(height: 9),
            SizedBox(
              width: 245,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>quizsetup()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B35F5), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                  Text("START QUIZ",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 11,
                  ),
                  Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white,size: 25,)
                ]),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Card(
              elevation: 5,
              child: Container(
              height: 210,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF06102E),
                border: Border.all(color: Color(0xFF17294A))
              ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("🧠",style: TextStyle(fontSize: 40),),
                          Text("🎯",style: TextStyle(fontSize: 40),),
                          Text("⚡",style: TextStyle(fontSize: 30),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            children: [
                              Text("Choose",style: TextStyle(color: Colors.white),),
                              Text("Category",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              Text("Set",style: TextStyle(color: Colors.white),),
                              Text("Difficulty",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              Text("Select",style: TextStyle(color: Colors.white),),
                              Text("Questions",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Answer questions from different",style: TextStyle(color: Color(0xFFA6B6E8)),),
                    Text("categories and challenge yourself!",style: TextStyle(color: Color(0xFFA6B6E8)),),

                  ],
                ),
            ), )
          ],
        ),
      ),
    );
  }
}
