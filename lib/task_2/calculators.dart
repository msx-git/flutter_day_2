import 'package:flutter/material.dart';
import 'package:flutter_day_2/task_2/widgets/black_calculator.dart';
import 'package:flutter_day_2/task_2/widgets/white_calculator.dart';

class Calculators extends StatelessWidget {
  const Calculators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text("Calculators"),
      ),
      body: ListView(
        children: const [
          WhiteCalculator(),
          BlackCalculator(),
        ],
      ),
    );
  }
}
