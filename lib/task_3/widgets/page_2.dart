import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size(300, 700)),
      margin: const EdgeInsets.all(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Scaffold(
          backgroundColor: const Color(0xfff6f3f3),
          appBar: AppBar(
            title: const Text(
              "My Todo",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          drawer: const Drawer(),
          body: ListView(
            primary: false,
            shrinkWrap: true,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 60),
            children: const [
              /// Remaining Task
              TaskWidget(
                icon: DoneIcon(),
                todoTitle:
                    "Complete Flutter UI App\nchallange and upload it \non Github",
                date: "1h 25m",
                isDone: true,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Remaining Task ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "(25)",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 20),

              /// Remaining Tasks widgets
              TaskWidget(
                  icon: CheckIcon(
                      icon: Icon(Icons.check, color: Colors.white, size: 15)),
                  todoTitle: "Complete all the college \nassignments",
                  date: "May 16",
                  isDone: false),
              SizedBox(height: 20),
              TaskWidget(
                  icon: CheckIcon(
                      icon: Icon(Icons.check, color: Colors.white, size: 15)),
                  todoTitle: "Buy watch for dad on\nFather's day",
                  date: "May 17",
                  isDone: false),
              SizedBox(height: 20),
              TaskWidget(
                  icon: CheckIcon(
                      icon: Icon(Icons.note_alt_outlined,
                          color: Colors.white, size: 15)),
                  todoTitle:
                      "Complete the Case Study \nand send it to the professor",
                  date: "May 20",
                  isDone: false),
              SizedBox(height: 20),
              TaskWidget(
                  icon: CheckIcon(
                      icon: Icon(Icons.cake_outlined,
                          color: Colors.white, size: 15)),
                  todoTitle: "Rafael's birthday party \nat Coves Inn",
                  date: "May 16",
                  isDone: false),
              SizedBox(height: 20),
              TaskWidget(
                  icon: CheckIcon(
                      icon: Icon(Icons.check, color: Colors.white, size: 15)),
                  todoTitle: "Help Sis with her Calculus \nAssignments",
                  date: "May 16",
                  isDone: false),
              SizedBox(height: 20),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

class DoneIcon extends StatelessWidget {
  const DoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}

class CheckIcon extends StatelessWidget {
  const CheckIcon({super.key, required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.icon,
    required this.todoTitle,
    required this.date,
    required this.isDone,
  });

  final String todoTitle;
  final Widget icon;

  final String date;

  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isDone ? Colors.green.withOpacity(0.3) : Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          Expanded(
            child: Text(
              todoTitle,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
