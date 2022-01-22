import 'dart:ffi';

import 'package:faucon_qcm/color.dart';
import 'package:faucon_qcm/data/quizzes_list.dart';
import 'package:faucon_qcm/screens/score_screen.dart';
import 'package:flutter/material.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({ Key? key }) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}


class _QuestScreenState extends State<QuestScreen> {
  Color color1= unselectedQuestionColor;
  Color color2= unselectedQuestionColor;
  Color color3= unselectedQuestionColor;
  Color color4= unselectedQuestionColor;
  late int indexQuestion;
  @override
  void initState() {
    indexQuestion=0;
    super.initState();
  }
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Flutter Quiz'),
        backgroundColor: backgroundColor,
        
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
        children:[
          Expanded(
            flex: 3,
            child: Column(
             children:[
               Text(AllQuizzes[indexQuestion].question, 
               style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20,
                  ),
                  ),
                  Divider(color: Colors.white,thickness: 2,)
             ],
              ),
              ),
           const SizedBox(
             height: 10,
           ),
              Expanded(
              flex: 8,
            child: Column(
            children: [

              GestureDetector(
                onTap: () {
                  setState(() {
                    color1= selectedQuestionColor;
                    color2= unselectedQuestionColor;
                    color3= unselectedQuestionColor;
                    color4= unselectedQuestionColor;
                  });
                },
             child: Container(
                    height: 80,
              decoration:BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.circular(30)   
              ),
              width:double.maxFinite,
              child:Row(
                children: [
                   Container(
                     decoration: BoxDecoration(shape: BoxShape.circle, color: selectedQuestionColor),
                child: TextButton(
                onPressed:() {
                  
                },
                 child: const Text('I',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                 ),
                 ),
              ),
              ),

              Flexible(child: TextButton(
                onPressed:null,
                 child: Text( AllQuizzes[indexQuestion].possibleAnswers[0],
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                 ),)
                   
                 ),
              ),
             
                ],
              )
              
              )
              ),
              

              SizedBox(height:10,),

              GestureDetector(
                onTap: ( ) {
                   setState( (){
                    color2= selectedQuestionColor;
                    color1= unselectedQuestionColor;
                    color3= unselectedQuestionColor;
                    color4= unselectedQuestionColor;
                  }
                  );
                },
               child: Container(
                    height: 80,
              decoration:BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(30)   
              ),
              width:double.maxFinite,
              child:Row(
                children: [
                   Container(
                     decoration: BoxDecoration(shape: BoxShape.circle, color: selectedQuestionColor),
                child: const TextButton(
                onPressed:null,

                 child: Text('II',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                 ),
                 ),
              ),
              ),

                  Flexible(child:   TextButton(
                onPressed:null,
                 child:  Text(AllQuizzes[indexQuestion].possibleAnswers[1],
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                 ),
                 )
                 
                 ),
              ),
              ],
             )
              
              ),
              ),
              

               SizedBox(height:10,),

                GestureDetector(
                  onTap: (){
                    setState(() {
                    color3= selectedQuestionColor;
                    color1= unselectedQuestionColor;
                    color2= unselectedQuestionColor;
                    color4= unselectedQuestionColor;
                  });
                  },
                child:  Container(
                    height: 80,
              decoration:BoxDecoration(
                color: color3,
                borderRadius: BorderRadius.circular(30)   
              ),
              width:double.maxFinite,
              child:Row(
                children: [
                   Container(
                     decoration: BoxDecoration(shape: BoxShape.circle, color: selectedQuestionColor),
                child: TextButton(
                onPressed:null,
                 child: const Text('III',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                 ),
                 ),
              ),
              ),
              Flexible(child:  TextButton(
                onPressed:null,
                 child:  Text(AllQuizzes[indexQuestion].possibleAnswers[2],
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                 ),
                 ),
              ),
              )
                  
             
                ],
              )
              
              ),
                ),
             
               SizedBox(height:10,),
               GestureDetector(
                 onTap: (){
                    setState(() {
                    color4= selectedQuestionColor;
                    color1= unselectedQuestionColor;
                    color2= unselectedQuestionColor;
                    color3= unselectedQuestionColor;
                  });
                 },
                 child:  Container(
                    height: 80,
              decoration:BoxDecoration(
                color: color4,
                borderRadius: BorderRadius.circular(30)   
              ),
              width:double.maxFinite,
              child:Row(
                children: [
                   Container(
                     decoration: BoxDecoration(shape: BoxShape.circle, color: selectedQuestionColor),
                child: const TextButton(
                onPressed:null,
                 child: Text('IV',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                 ),
                 ),
              ),
              ),
                Flexible(child:   TextButton(
                onPressed:null,
                 child:  Text(AllQuizzes[indexQuestion].possibleAnswers[3],
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                 ),
                 ),
              ),)
             
                ],
              )
              
              ),
               ),
                 
               SizedBox(height:10,),
            ],
              ),
              ),
              const SizedBox(
             height: 10,
           ),
               Expanded(
                 flex: 1,
            child: Container(
              decoration:BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30)   
              ),
              width: double.maxFinite,
              child: TextButton(
                onPressed:() {
                  setState(() {
                    if (indexQuestion >= 5) {
                      indexQuestion = 0;

                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=>ScoreScreen(),),

                    );
                    }
                    else {
                      indexQuestion += 1;
                    }
                  });
                },
                 child: const Text('Suivant',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
                 ),
              ),
              
              ),
              ),
               
          ],
          ),
        ),
        
    );
  }
}