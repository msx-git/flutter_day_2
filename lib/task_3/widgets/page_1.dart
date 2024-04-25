import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          const SizedBox(width: double.infinity, height: 150),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: CupertinoColors.activeBlue,
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Welcome to",
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            "My Todo",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Text(
            "My Todo helps you stay organized and\nperformyour tasks much faster.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Text(
              "Try Demo",
              style: TextStyle(color: Colors.indigo),
            ),
          ),
          TextButton(onPressed: () {}, child: const Text("No thanks")),
          const SizedBox(width: double.infinity, height: 150),
        ],
      ),
    );
  }
}
