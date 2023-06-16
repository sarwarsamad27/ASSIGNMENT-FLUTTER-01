import 'package:calculator_app/Constant.dart';
import 'package:calculator_app/components/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class screen_one extends StatefulWidget {
  const screen_one({Key? key}) : super(key: key);

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(

              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                         alignment: Alignment.bottomRight,
                              child: Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
                        SizedBox(height: 15,),
                        Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),

                      ],
                    ),
                  ),
                ),
               Expanded(
                 flex: 2,
                 child: Column(
                      children:   [
                        Row(
                          children: [
                            MyButton(title: 'AC',onPress: (){
                             userInput = '';
                             answer = '';
                             setState(() {

                             });
                            },),
                            MyButton(title: '+/-',onPress: (){
                             userInput += '+/-';
                             setState(() {

                             });
                            },),
                            MyButton(title: '%',onPress: (){
                              userInput += '%';
                              setState(() {

                              });
                            }),
                            MyButton(title: '/',onPress: (){
                              userInput += '/';
                              setState(() {

                              });
                            },color: Color(0xffffa00a),),


                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '7',onPress: (){
                              userInput += '7';
                              setState(() {

                              });
                            },),
                            MyButton(title: '8',onPress: (){
                              userInput += '8';
                              setState(() {

                              });
                            },),
                            MyButton(title: '9',onPress: (){
                              userInput += '9';
                              setState(() {

                              });
                            }),
                            MyButton(title: 'x',onPress: (){
                              userInput += 'x';
                              setState(() {

                              });
                            },color: Color(0xffffa00a),),


                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '4',onPress: (){
                              userInput += '4';
                              setState(() {

                              });
                            },),
                            MyButton(title: '5',onPress: (){
                              userInput += '5';
                              setState(() {

                              });
                            },),
                            MyButton(title: '6',onPress: (){
                              userInput += '6';
                              setState(() {

                              });
                            }),
                            MyButton(title: '-',onPress: (){
                              userInput += '-';
                              setState(() {

                              });
                            },color: Color(0xffffa00a),),


                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '1',onPress: (){
                              userInput += '1';
                              setState(() {

                              });
                            },),
                            MyButton(title: '2',onPress: (){
                              userInput += '2';
                              setState(() {

                              });
                            },),
                            MyButton(title: '3',onPress: (){
                              userInput += '3';
                              setState(() {

                              });
                            }),
                            MyButton(title: '+',onPress: (){
                              userInput += '+';
                              setState(() {

                              });
                            },color: Color(0xffffa00a),),


                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '0',onPress: (){
                              userInput += '0';
                              setState(() {

                              });
                            },),
                            MyButton(title: '.',onPress: (){
                              userInput += '.';
                              setState(() {

                              });
                            },),
                            MyButton(title: 'DEL',onPress: (){
                              userInput = userInput.substring(0 , userInput.length - 1);
                              setState(() {

                              });
                            }),
                            MyButton(title: '=',onPress: (){
                             equalPress();
                              setState(() {

                              });
                            },color: Color(0xffffa00a),),


                          ],
                        ),


  ]
          ),
               ),




                
              ],
            ),
          ),
        ),

      ),
    );
  }

   void equalPress(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    answer = eval.toString();
}

}