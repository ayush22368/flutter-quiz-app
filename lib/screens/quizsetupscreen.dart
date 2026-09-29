import 'package:flutter/material.dart';
import 'package:quizmaster/screens/showquizscreen.dart';
class quizsetup extends StatefulWidget {
  const quizsetup({super.key});

  @override
  State<quizsetup> createState() => _quizsetupState();
}

class _quizsetupState extends State<quizsetup> {
  String category="";
  String difficulty="";
  String numberofquestion="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000D21),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
              SizedBox(
                width: 90,
              ),
              Text("Quiz Setup",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
             
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("1.Select Category",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="9";
                      });


                   },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="9"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("🧠",style: TextStyle(fontSize: 40),),
                          Text("General",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text("Knowledge",style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="18";
                      });


                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="18"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("💻",style: TextStyle(fontSize: 40),),
                          Text("Computers",style: TextStyle(fontSize: 15,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="11";
                      });


                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="11"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("🎬",style: TextStyle(fontSize: 40),),
                          Text("Flim",style: TextStyle(fontSize: 15,color: Colors.white),)

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="17";
                      });


                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="17"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("🧪",style: TextStyle(fontSize: 40),),
                          Text("Science &",style: TextStyle(fontSize: 15,color: Colors.white),),
                          Text("Nature",style: TextStyle(fontSize: 15,color: Colors.white),),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="21";
                      });


                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="21"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("⚽",style: TextStyle(fontSize: 40),),
                          Text("Sports",style: TextStyle(fontSize: 15,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap:(){

                      setState(() {
                        category="22";
                      });


                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF091528),
                          border: Border.all(color:category=="22"?Colors.purple:Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("🌍",style: TextStyle(fontSize: 40),),
                          Text("Geography",style: TextStyle(fontSize: 15,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: Text("2.Select Difficulty",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){

                      setState(() {
                        difficulty="easy";
                      });


                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF082F25),
                        border: Border.all(color:difficulty=="easy"?Colors.purple:Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Easy",style: TextStyle(color: Colors.white),)),
                  ),
                ),
                GestureDetector(
                  onTap:(){

                      setState(() {
                        difficulty="medium";
                      });


                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF29205F),
                        border: Border.all(color:difficulty=="medium"?Colors.purple:Colors.black),

                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Medium",style: TextStyle(color: Colors.white),)),
                  ),
                ),
                GestureDetector(
                  onTap:(){

                      setState(() {
                        difficulty="hard";
                      });


                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF3A1724),
                        border: Border.all(color:difficulty=="hard"?Colors.purple:Colors.black),

                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Hard",style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text("3.Number of Questions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                GestureDetector(
                  onTap:(){

                      setState(() {
                        numberofquestion="10";
                      });


                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: numberofquestion=="10"?Colors.purple:null
                    ),
                    child: Center(child: Text("10",style: TextStyle(color: Colors.white,fontSize: 18),)),

                  ),
                ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      numberofquestion="20";
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: numberofquestion=="20"?Colors.purple:null

                    ),
                    child: Center(child: Text("20",style: TextStyle(color: Colors.white,fontSize: 18),)),

                  ),
                ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      numberofquestion="30";
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: numberofquestion=="30"?Colors.purple:null

                    ),
                    child: Center(child: Text("30",style: TextStyle(color: Colors.white,fontSize: 18),)),

                  ),
                ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      numberofquestion="35";
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: numberofquestion=="35"?Colors.purple:null

                    ),
                    child: Center(child: Text("35",style: TextStyle(color: Colors.white,fontSize: 18),)),

                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 255,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if(category.isEmpty || numberofquestion.isEmpty || difficulty.isEmpty){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: Center(child: Text("Select all options",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                      actions: [
                        Center(
                          child: ElevatedButton(onPressed: (){
                            Navigator.pop(context);
                          },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),backgroundColor: Colors.purpleAccent), child: Text("ok",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        )
                      ],
                    );
                  });
                  return;
                }
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>showquiz(difficulty: difficulty,category: category,numberofquestion: numberofquestion,)));
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
        ],
      ),
    );
  }
}
