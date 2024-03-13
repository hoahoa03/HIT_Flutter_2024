import 'package:cau2/cau2.dart' as cau2;

int tinhSoChuSo(int soNguyen) {
  int soChuSo = 0;
  if (soNguyen == 0) 
  {
    return 1;
  } 
  else 
  {
    while (soNguyen != 0) 
    {
      soNguyen = soNguyen ~/ 10;
      soChuSo++;
    }
  }
  return soChuSo;
}

void main(List<String> arguments) {
  int so1 = 0;
  int so2 = 12345;
  int so3 = -987654321;

  print("So chu so cua so 0 la: " + tinhSoChuSo(so1).toString());  
  print("So chu so cua so 12345 la: " + tinhSoChuSo(so2).toString());  
  print("So chu so cua so -987654321 la: " + tinhSoChuSo(so3).toString());  
}
