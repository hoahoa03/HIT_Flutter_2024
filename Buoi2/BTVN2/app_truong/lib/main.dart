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
          margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /////////1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Phạm Thị Hoa',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 51, 50, 50)),
                  ),
                  // Icon(
                  //   Icons.notifications_outlined,
                  //   color: Color.fromARGB(255, 90, 89, 89),
                  //   size: 36,

                  // ),
                  Image.asset('asset/bell.png'),
                ],
              ),
              /////////2
              Container(
                // height: 150,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 12, 16, 30),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 229, 229, 0.612),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            'asset/lich.png',
                            width: 130,
                            height: 100,
                          ),
                        ),

                        // const Icon(
                        //   Icons.calendar_month,
                        //   size: 100,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Thời khóa biểu',
                              style: TextStyle(fontSize: 14),
                            ),
                            Row(
                              children: [
                                const Text(
                                  '18 tháng 3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(38, 38, 38, 0.612),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 10, 95, 165))),
                          onPressed: () {},
                          child: Text('Lịch thi'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Không có lịch!',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              ' Xem thêm TKB',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 8, 45, 179)),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ////////3
              Container(
                padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Text(
                  'Thông báo gần đây',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 51, 50, 50),
                  ),
                ),
              ),
              ///////4
              Container(
                margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 229, 229, 0.612),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'THÔNG BÁO V/v mở, không mở các lớp học phần trong học kỳ 2 năm học 2023-2024 cho sinh viên Đại học các khóa',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 111, 196),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.schedule,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 8),
                          child: Text('03:30 02/02/2024'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ////////5
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'Tiện ích',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 51, 50, 50),
                  ),
                ),
              ),
              ///////6
              Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.payments_outlined,
                            size: 40,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Tài chính',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.equalizer,
                            size: 40,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Kết quả HP',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // child: Icon(
                          //   Icons.payments_outlined,
                          //   size: 40,
                          //   color: Colors.blue[800],
                          // ),
                          child: Image.asset(
                            'asset/news_line.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Học phần',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.school_outlined,
                            size: 40,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Tốt nghiệp',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /////////7
              Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'asset/phone.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Container(
                          width: 80,
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'DV một cửa',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.edit_note,
                            size: 44,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          width: 80,
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Đánh giá rèn luyện',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.help_outline_outlined,
                            size: 40,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          width: 80,
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Hỏi đáp',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(230, 239, 239, 237),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.edit_outlined,
                            size: 40,
                            color: Colors.blue[800],
                          ),
                        ),
                        Container(
                          width: 80,
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Khảo sát',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
