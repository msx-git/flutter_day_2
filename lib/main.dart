import 'package:flutter/material.dart';
import 'package:flutter_day_2/task_1/cards.dart';
import 'package:flutter_day_2/task_2/calculators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;

  final List<Widget> pages = [
    const Cards(),
    const Calculators(),
    const Center(
      child: Text("Task-3"),
    ),
  ];

  changePage(index) => setState(() => _pageIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Text("1"),
            label: 'Task-1',
          ),
          NavigationDestination(
            icon: Text("2"),
            label: 'Task-2',
          ),
          NavigationDestination(
            icon: Text("3"),
            label: 'Task-3',
          ),
        ],
        onDestinationSelected: changePage,
        selectedIndex: _pageIndex,
      ),
    );
  }
}
