import 'dart:math';

import 'package:cau6/cau6.dart' as cau6;

bool isPrime(int number) {
  if (number < 2) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i <= sqrt(number); i += 2) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

String docTiengViet(int number) {
  List<String> so1ChuSo = [
    'không',
    'một',
    'hai',
    'ba',
    'bốn',
    'năm',
    'sáu',
    'bảy',
    'tám',
    'chín'
  ];

  List<String> muoiDenMuoiChin = [
    'mười',
    'mười một',
    'mười hai',
    'mười ba',
    'mười bốn',
    'mười lăm',
    'mười sáu',
    'mười bảy',
    'mười tám',
    'mười chín'
  ];

  List<String> chuc = [
    "mười",
    "hai mươi",
    "ba mươi",
    "bốn mươi",
    "năm mươi",
    "sáu mươi",
    "bảy mươi",
    "tám mươi",
    "chín mươi"
  ];
  List<String> tram = [
    "một trăm",
    "hai trăm",
    "ba trăm",
    "bốn trăm",
    "năm trăm",
    "sáu trăm",
    "bảy trăm",
    "tám trăm",
    "chín trăm"
  ];

  String docSo = '';

  if (number < 10) {
    // Số từ 0 đến 9
    docSo = so1ChuSo[number];
  } else if (number < 20) {
    // Số từ 10 đến 19
    int so = number % 10;
    docSo = muoiDenMuoiChin[so];
  } else if (number < 100) {
    // Số từ 20 đến 99
    int soHangChuc = (number ~/ 10) % 10;
    int soDonVi = number % 10;

    String tenHangChuc = soHangChuc > 0 ? chuc[soHangChuc - 1] : '';
    String tenHangDonVi = so1ChuSo[soDonVi];

    docSo = tenHangChuc + ' ' + tenHangDonVi;
  }
  else {
    // Số từ 100 trở lên
    int soHangTram = (number ~/ 100) % 10;
    int soHangChuc = (number ~/ 10) % 10;
    int soDonVi = number % 10;

    String tenHangTram = tram[soHangTram - 1];
    String tenHangChuc = soHangChuc > 0 ? chuc[soHangChuc - 1] : '';
    String tenHangDonVi = so1ChuSo[soDonVi];

    docSo = tenHangTram + ' ' + tenHangChuc + ' ' + tenHangDonVi;
  }

  return docSo;
}

void main(List<String> arguments) {
  List<int> listA = List.generate(100, (index) => Random().nextInt(1000));

  print('List A: $listA');

  Set<int> setB = Set.from(listA);

  print('Set B: $setB');

  List<int> listC = [];
  for (int number in setB) {
    if (isPrime(number)) {
      listC.add(number);
    }
  }

  print('List C: $listC');

  Map<int, String> mapD = {};
  for (int number in listC) {
    String doc = docTiengViet(number);
    mapD[number] = doc;
  }

  print('Map D: $mapD');
}
