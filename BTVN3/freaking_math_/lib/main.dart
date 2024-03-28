import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int status = 0;
  int point = 0;
  int maxPoint = 0;
  int minPoint = 0;
  int time = 8;
  late QuestionGenerator questionGenerator;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    questionGenerator = QuestionGenerator.random();
    timer = Timer.periodic(Duration(seconds: 1), (timer) { });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: status == 0
              ? _homeScreen()
              : status == 1
                  ? _playScreen()
                  : _gameOverScreen()),
    );
  }

  Container _homeScreen() {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 150, 50, 300),
      decoration: BoxDecoration(color: Colors.pink[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 106, 120),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '1 + 1 = 2',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Text('Tớ iu cậu khum bao giờ sai <3'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Freaking',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 227, 97, 71)),
                    ),
                    Text(
                      'Math',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 115, 45, 25)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    status = 1;

                    time = 8;
                    _play();
                    point = 0;
                  });
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.red[600],
                  size: 40,
                )),
          )
        ],
      ),
    );
  }

  void _incorrectAnswer() {
    maxPoint = max(maxPoint, point);
    setState(() {
      status = 2;
    });
  }

  void _correctAnswer() {
    questionGenerator = QuestionGenerator.random();
    setState(() {
      point++;
    });
  }

  void _play() {
    if (timer?.isActive == true) timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (time > 0) {
          time--;
        } else {
          timer.cancel();
          _incorrectAnswer();
        }
      });
    });

    if (time > 0) {
      _correctAnswer();
      time = 8;
    }
  }

  Container _playScreen() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      color: Color.fromARGB(255, 223, 142, 250),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Text(
              '$point',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.schedule),
                      Text(
                        ' ${time}',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 225, 193),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${questionGenerator.num1}',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${questionGenerator.currentOperation}',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${questionGenerator.num2}',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' = ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${questionGenerator.result}',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: IconButton(
                      onPressed: () {
                        if (questionGenerator.result ==
                            questionGenerator.rightResult) {
                          _play();
                        } else {
                          _incorrectAnswer();
                        }
                      },
                      icon: Icon(
                        Icons.check,
                        size: 130,
                        color: Colors.green[600],
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: IconButton(
                      onPressed: () {
                        if (questionGenerator.result !=
                            questionGenerator.rightResult) {
                          _play();
                        } else {
                          _incorrectAnswer();
                        }
                      },
                      icon: Icon(
                        Icons.close,
                        size: 130,
                        color: Colors.red[600],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _gameOverScreen() {
    return Container(
      padding: EdgeInsets.fromLTRB(69, 100, 69, 200),
      decoration: BoxDecoration(color: Colors.pink[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'GAME OVER',
            style: TextStyle(
                fontSize: 36,
                color: const Color.fromARGB(255, 223, 53, 53),
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  '${point}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Best',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  '${maxPoint}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        status = 1;
                        time = 8;
                        _play();
                        point = 0;
                      });
                    },
                    icon: Icon(
                      Icons.replay,
                      size: 50,
                      color: const Color.fromARGB(255, 51, 51, 51),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        status = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      size: 50,
                      color: const Color.fromARGB(255, 51, 51, 51),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}

class QuestionGenerator {
  int num1, num2;
  int rightResult, result;
  String currentOperation;

  List<String> operations = ['+', '-', '*', '/'];

  QuestionGenerator(this.num1, this.num2, this.currentOperation, this.result,
      this.rightResult);

  factory QuestionGenerator.random() {
    Random random = Random();
    int num1 = random.nextInt(20);
    int num2 = random.nextInt(20);
    int rightResult = 0, result = 0;

    List<String> operations = ['+', '-', '*', '/'];
    String currentOperation = operations[random.nextInt(operations.length - 1)];

    switch (currentOperation) {
      case "+":
        rightResult = num1 + num2;
        break;
      case "-":
        rightResult = num1 - num2;
        break;
      case "*":
        rightResult = num1 * num2;
        break;
      case "/":
        rightResult = num1 ~/ num2;
        break;
    }
    result = rightResult + (random.nextInt(2) - 1);
    return QuestionGenerator(num1, num2, currentOperation, result, rightResult);
  }
}
