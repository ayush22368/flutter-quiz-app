import 'package:flutter/material.dart';

class resue{
  static  button({required String name,required VoidCallback action}){
    return SizedBox(
      width: 245,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          action;
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
    );
  }
}