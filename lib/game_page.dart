import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int red = 10;
  int blue = 10;
  bool isWinnerBlue = false;
  bool isWinnerRed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: blue,
            child: GestureDetector(
                onTap: () {
                  blue += 10;
                  if (blue >= 300) {
                    isWinnerBlue = true;
                    if(isWinnerBlue || isWinnerRed){
                      blue = 10;
                      red = 10;
                    }
                    setState(() {});
                  }
                  setState(() {});
                  debugPrint(blue.toString());
                  
                },
                child: Container(
                  color: Colors.blue,
                )),
          ),
          red == 10 && isWinnerRed? Text("Red win",style: TextStyle(fontSize: 25),):SizedBox(),
          blue == 10 && isWinnerBlue ? Text("blue win",style: TextStyle(fontSize: 25),):SizedBox(), 
          
          Expanded(
            flex: red,
            child: GestureDetector(
                onTap: () {
                  red += 10;
                  if (red >= 300) {
                    isWinnerRed = true;
                    if(isWinnerBlue || isWinnerRed){
                      blue = 10;
                      red = 10;
                    }
                    
                    setState(() {});
                  }
                  
                  setState(() {});
                  debugPrint(red.toString());
                  
                },
                child: Container(
                  color: Colors.red,
                )),
          ),
        ],
      ),
    );
  }
}

futureFunc()async{
  await Future.delayed(Duration(seconds: 5));
}