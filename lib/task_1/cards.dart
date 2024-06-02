import 'package:flutter/material.dart';
import 'package:flutter_day_2/task_1/widgets/card_1.dart';
import 'package:flutter_day_2/task_1/widgets/card_2.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        children: const [
          Text("1 - Card"),
          Card1(
            bankName: "Aloqa Bank",
            cardNumber: "9860 1901 0119 4990",
            cardType: "Humo Card",
            ownerName: "Card Holder Name",
            expireMonth: 6,
            expireYear: 24,
          ),
          SizedBox(height: 20),
          Text("2 - Card"),
          Card2(
            bankName: "Aloqa Bank",
            cardNumber: "9860 1901 0119 4990",
            cardType: "Humo Card",
            ownerName: "Card Holder Name",
            expireMonth: 11,
            expireYear: 24,
          ),
        ],
      ),
    );
  }
}
