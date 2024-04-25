import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({super.key, required this.content, required this.isNight});

  final String content;

  final bool isNight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: !isNight
                ? Colors.grey.withOpacity(0.5)
                : const Color(0xff202020),
            blurRadius: 4,
            spreadRadius: 0.1,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        content,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
