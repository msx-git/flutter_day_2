import 'package:flutter/material.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      child: const Text(
        "=",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
