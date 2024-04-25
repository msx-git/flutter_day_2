import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  const GreyButton(
      {super.key,
      required this.content,
      required this.color,
      required this.textColor});

  final String content;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: textColor == Colors.black
                ? Colors.grey.withOpacity(0.5)
                : const Color(0xff101010),
            blurRadius: 4,
            spreadRadius: 0.1,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        content,
        style: TextStyle(fontSize: 15, color: textColor),
      ),
    );
  }
}
