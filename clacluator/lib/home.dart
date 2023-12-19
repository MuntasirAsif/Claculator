import 'package:clacluator/componants/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children:  [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Align(
                    alignment: Alignment.bottomRight,
                  ),
                  Text(userInput.toString(),style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(answer.toString(),style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      MyButton(title: 'CLR',onPress: (){
                        userInput = '';
                        answer = '';
                        setState(() {

                        });
                      },),
                      MyButton(title: 'AC',onPress: (){
                        userInput = '';
                        setState(() {

                        });
                      },),
                      MyButton(title: '%',onPress: (){
                        userInput += '%';
                        setState(() {

                        });
                      },),
                      MyButton(title: '/', color: const Color(0xffffa00a),onPress: (){
                        userInput += '/';
                        setState(() {

                        });
                      },),
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
                      },),
                      MyButton(title: 'X', color: const Color(0xffffa00a),onPress: (){
                        userInput += 'X';
                        setState(() {

                        });
                      },),
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
                      },),
                      MyButton(title: '-', color: const Color(0xffffa00a),onPress: (){
                        userInput += '-';
                        setState(() {

                        });
                      },),
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
                      },),
                      MyButton(title: '+', color: const Color(0xffffa00a),onPress: (){
                        userInput += '+';
                        setState(() {

                        });
                      },),
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
                        userInput = userInput.substring(0, userInput.length -1 );
                        setState(() {

                        });
                      },),
                      MyButton(title: '=', color: const Color(0xffffa00a),onPress: (){
                        equalPress();
                        setState(() {

                        });
                      },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void equalPress(){
    String finalUserInput = userInput.replaceAll('X','*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    var eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

  }
}

