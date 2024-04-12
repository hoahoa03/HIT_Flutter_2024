import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Task {
  String title;
  String startTime;
  String endTime;
  String deadline;
  bool isFavorite;
  bool isCompleted;
  String remind;
  String repeat;
  Color color;

  Task({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.deadline,
    required this.isFavorite,
    required this.isCompleted,
    required this.remind,
    required this.repeat,
    required this.color,
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  List<Task> tasks = [];

  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Board'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Uncomplete",
              ),
              Tab(
                text: "Complete",
              ),
              Tab(
                text: "Favorite",
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 113, 237, 117),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 148, 201, 244),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 250, 192, 130),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 245, 144, 178),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 250, 192, 130),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                  
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 113, 237, 117),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                  
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 245, 144, 178),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_box_outline_blank_outlined),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Làm BTVN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'From: 07:00 PM - To: 10:00 PM',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Deadline: 14/04/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(onPressed: (){
                          setState(() {
                            Icon(Icons.favorite,
                            color: Colors.pink,);
                          });
                        }, icon: Icon(Icons.favorite_outline))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String title = '';
  String startTime = '';
  String endTime = '';
  String deadline = '';
  String remind = '';
  String repeat = '';
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
    );
  }
}


// ListView.builder(
            //   itemCount: tasks.length,
            //   itemBuilder: (context, index) {
            //     Task task = tasks[index];
            //     return ListTile(
            //       title: Text(task.title),
            //       subtitle: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text('Start Time: ${task.startTime}'),
            //           Text('End Time: ${task.endTime}'),
            //           Text('Deadline: ${task.deadline}'),
            //         ],
            //       ),
            //       trailing: Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           IconButton(
            //             icon: Icon(task.isFavorite ? Icons.favorite : Icons.favorite_border),
            //             onPressed: () {
            //               setState(() {
            //                 task.isFavorite = !task.isFavorite;
            //               });
            //             },
            //           ),
            //           Checkbox(
            //             value: task.isCompleted,
            //             onChanged: (value) {
            //               setState(() {
            //                 task.isCompleted = value ?? false;
            //               });
            //             },
            //           ),
            //         ],
            //       ),
                  
            //     );
            //   },
            // ),