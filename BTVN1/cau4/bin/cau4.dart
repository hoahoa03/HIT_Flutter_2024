import 'package:cau4/cau4.dart' as cau4;

void inCungHoangDao(int ngay, int thang) {
  if ((thang == 3 && ngay >= 21) || (thang == 4 && ngay <= 19)) {
    print("Cung hoàng đạo là Bạch Dương");
  } else if ((thang == 4 && ngay >= 20) || (thang == 5 && ngay <= 20)) {
    print("Cung hoàng đạo là Kim Ngưu");
  } else if ((thang == 5 && ngay >= 21) || (thang == 6 && ngay <= 21)) {
    print("Cung hoàng đạo là Song Tử");
  } else if ((thang == 6 && ngay >= 22) || (thang == 7 && ngay <= 22)) {
    print("Cung hoàng đạo là Cự Giải");
  } else if ((thang == 7 && ngay >= 23) || (thang == 8 && ngay <= 22)) {
    print("Cung hoàng đạo làa Sư Tử");
  } else if ((thang == 8 && ngay >= 23) || (thang == 9 && ngay <= 22)) {
    print("Cung hoàng đạo là Xử Nữ");
  } else if ((thang == 9 && ngay >= 23) || (thang == 10 && ngay <= 22)) {
    print("Cung hhoàng đạo là Thiên Bình");
  } else if ((thang == 10 && ngay >= 23) || (thang == 11 && ngay <= 21)) {
    print("Cung hoàng đạo là Bọ Cạp");
  } else if ((thang == 11 && ngay >= 22) || (thang == 12 && ngay <= 21)) {
    print("Cung hoàng đạo là Nhân Mã");
  } else if ((thang == 12 && ngay >= 22) || (thang == 1 && ngay <= 19)) {
    print("Cung hoàng đạo là Ma Kết");
  } else if ((thang == 1 && ngay >= 20) || (thang == 2 && ngay <= 18)) {
    print("Cung hoàng đạo là Bảo Bình");
  } else {
    print("Cung hoàng đạo là Song Ngư");
  }
}

void main(List<String> arguments) {
  int ngay = 30;
  int thang = 10;

  inCungHoangDao(ngay, thang);
}
