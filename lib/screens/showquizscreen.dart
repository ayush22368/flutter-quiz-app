import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quizmaster/screens/homescreen.dart';
import 'package:quizmaster/screens/model/quizmodel.dart';
import 'package:quizmaster/screens/quizsetupscreen.dart';
import 'package:quizmaster/screens/scorescreen.dart';

class showquiz extends StatefulWidget {
   String category;
   String difficulty;
   String numberofquestion;
   showquiz({super.key,required this.category,required this.difficulty,required this.numberofquestion});

  @override
  State<showquiz> createState() => _showquizState();
}

class _showquizState extends State<showquiz> {
  String category="";
  int currentquestionindex=0;
  List<questionmodel>questions=[];
  int score=0;
  var buttontext="Next";
  int? selectedindex;
  Future<void>getquestions()async{
    var response=await http.get(Uri.parse("https://opentdb.com/api.php?amount=${widget.numberofquestion}&category=${widget.category}&difficulty=${widget.difficulty}&type=multiple"));
    var newdata=jsonDecode(response.body);
    category=newdata["results"][0]["category"];
    for(var ks in newdata["results"]){
       setState(() {
         questions.add(questionmodel.fromjson(ks));

       });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    getquestions();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print(questions.length);
    return Scaffold(
      backgroundColor: Color(0xFF000D21),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      backgroundColor: Color(0xFF000D21),
                      content: SizedBox(
                        height: 200,
                        width: 220,
                        child: Column(
                          children: [
                             Icon(Icons.error_outline,color: Colors.pink,size: 80,),
                             SizedBox(
                               height: 8,
                             ),
                             Text("Quit Quiz?",style: TextStyle(fontSize: 33,color: Colors.white,fontWeight: FontWeight.bold),),
                             SizedBox(
                               height: 5,
                             ),
                             Text("Are you sure you want to quit?",style: TextStyle(fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      actions: [
                        Column(
                          children: [
                            SizedBox(
                              width: 245,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B35F5), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))),
                                  child: Text("Continue Quiz",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 245,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {

                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>quizsetup()));

                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.brown, shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))),
                                  child: Text("Quit",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),)
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  });
                }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
                Text(category,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                Text("${currentquestionindex+1} / ${questions.length}",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          questions.isEmpty?CircularProgressIndicator():Card(
            elevation: 1,
            child: Container(
              height: 620,
              width: 340,
              decoration: BoxDecoration(
                color:Color(0xFF000D21),
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                   Text(questions[currentquestionindex].question,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.white),),
                    SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder( itemCount: questions[currentquestionindex].incorrectanswer.length, itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedindex=index;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: selectedindex==index?(questions[currentquestionindex].incorrectanswer[selectedindex!]==questions[currentquestionindex].correct_answer?Colors.green:Colors.red):null,
                                border: Border.all(color: Colors.grey)
                              ),
                              child: Center(child: Text(questions[currentquestionindex].incorrectanswer[index],style: TextStyle(color: Colors.white,fontSize: 18),),),
                            ),
                          ),
                        );
                      }),
                    ),

                    buttontext=="Finish"?Padding(
                      padding: const EdgeInsets.only(left: 150,),
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(questions[questions.length-1].incorrectanswer[selectedindex!]==questions[questions.length-1].correct_answer){
                                setState(() {
                                  score++;
                                });

                              }
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>scorescreen(score: score,length: questions.length,)));


                            });
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B35F5), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text(buttontext,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  width: 11,
                                ),
                                Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white,size: 25,)
                              ]),
                        ),
                      ),
                    ):Padding(
                      padding: const EdgeInsets.only(left: 150,),
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if(questions[currentquestionindex].incorrectanswer[selectedindex!]==questions[currentquestionindex].correct_answer){
                              setState(() {
                                score++;
                              });
                            }
                            setState(() {
                              if(currentquestionindex<questions.length){
                                setState(() {
                                  selectedindex=null;
                                  currentquestionindex++;
                                });
                              }
                              if(currentquestionindex==questions.length-1){
                                setState(() {
                                  buttontext="Finish";
                                });
                              }


                            });
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B35F5), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("Next",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  width: 11,
                                ),
                                Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white,size: 25,)
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
