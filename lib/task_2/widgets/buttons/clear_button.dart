import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: const Icon(
        Icons.backspace_outlined,
        color: Colors.white,
      ),
    );
  }
}
