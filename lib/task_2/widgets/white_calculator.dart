import 'package:flutter/material.dart';
import 'package:flutter_day_2/task_2/widgets/buttons/clear_button.dart';
import 'package:flutter_day_2/task_2/widgets/dot_circle.dart';
import 'package:flutter_day_2/task_2/widgets/buttons/green_button.dart';

import 'buttons/equal_button.dart';
import 'buttons/grey_button.dart';

class WhiteCalculator extends StatelessWidget {
  const WhiteCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DotCircle(),
              DotCircle(),
              DotCircle(),
            ],
          ),

          /// Result Container
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff5f2ed),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 0.1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: double.infinity),
                  Text(''),
                  Text('345 + (35 x 3)',style: TextStyle(fontSize: 26),),
                  Text("=",style: TextStyle(color: Colors.deepPurple,fontSize: 24),),
                  Text("450",style: TextStyle(fontSize: 32),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),

          /// Buttons row 1
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreyButton(content: "SIN",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: "COS",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: "TAN",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: "LOG",color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 20),

          /// Buttons row 2
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreyButton(content: "(",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: ")",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: "√",color: Color(0xfff5f2ed), textColor: Colors.black,),
              GreyButton(content: "%",color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 16),

          /// Buttons row 3
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreenButton(content: "1", isNight: true),
              GreenButton(content: "2", isNight: true),
              GreenButton(content: "3", isNight: true),
              GreyButton(content: 'X',color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 16),

          /// Buttons row 4
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreenButton(content: "4", isNight: true),
              GreenButton(content: "5", isNight: true),
              GreenButton(content: "6", isNight: true),
              GreyButton(content: '÷',color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 16),

          /// Buttons row 5
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreenButton(content: "7", isNight: true),
              GreenButton(content: "8", isNight: true),
              GreenButton(content: "9", isNight: true),
              GreyButton(content: '-',color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 16),

          /// Buttons row 6
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreenButton(content: "0", isNight: true),
              GreenButton(content: ".", isNight: true),
              ClearButton(),
              GreyButton(content: '+',color: Color(0xfff5f2ed), textColor: Colors.black,),
            ],
          ),
          const SizedBox(height: 16),

          const EqualButton(),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            width: 100,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
    );
  }
}

