import 'package:flutter/material.dart';

class DotCircle extends StatelessWidget {
  const DotCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 1),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff666666),
      ),
      height: 10,
      width: 10,
    );
  }
}
