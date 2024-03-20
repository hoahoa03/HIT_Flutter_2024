import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              ////1
              Container(
                color: Colors.red,
                padding: EdgeInsets.fromLTRB(120, 20, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lịch sử hiến máu',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.wechat_sharp,
                        color: Colors.white,
                        size: 42,
                      ),
                    )
                  ],
                ),
              ),
              ////2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('asset/cun.jpg'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 53, 53, 53),
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ////3
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  'Phạm Thị Hoa',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ////4
              Container(
                margin: EdgeInsets.only(bottom: 4),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 114, 220, 142)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 14)),
                  ),
                  onPressed: () {},
                  child: Text('Mức 2'),
                ),
              ),
              ////5
              Container(
                color: Color.fromARGB(255, 227, 227, 227),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                            color: Color.fromARGB(255, 244, 244, 244),
                            child: Text(
                              'Lần 4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '27/02/2024',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(children: [
                                  Image.asset('asset/kim.png'),
                                  Text(
                                    ' 350 ml (Toàn phần)',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 197, 197, 197)),
                                  ),
                                ]),
                                Text(
                                  'Trung tâm máu quốc gia',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 197, 197, 197)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                            color: Color.fromARGB(255, 244, 244, 244),
                            child: Text(
                              'Lần 3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '19/09/2023',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(children: [
                                  Image.asset('asset/kim.png'),
                                  Text(
                                    ' 350 ml (Toàn phần)',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 197, 197, 197)),
                                  ),
                                ]),
                                Text(
                                  'Trung tâm máu quốc gia',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 197, 197, 197)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                            color: Color.fromARGB(255, 244, 244, 244),
                            child: Text(
                              'Lần 2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '14/06/2023',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(children: [
                                  Image.asset('asset/kim.png'),
                                  Text(
                                    ' 350 ml (Toàn phần)',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 197, 197, 197)),
                                  ),
                                ]),
                                Text(
                                  'Trung tâm máu quốc gia',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 197, 197, 197)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                            color: Color.fromARGB(255, 244, 244, 244),
                            child: Text(
                              'Lần 1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '20/02/2023',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(children: [
                                  Image.asset('asset/kim.png'),
                                  Text(
                                    ' 350 ml (Toàn phần)',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 197, 197, 197)),
                                  ),
                                ]),
                                Text(
                                  'Trung tâm máu quốc gia',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 197, 197, 197)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
