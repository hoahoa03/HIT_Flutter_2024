import 'package:cau1/cau1.dart' as cau1;

bool namNhuan ( int nam )
{
  if ( nam % 4 == 0 ) return true;
  return false;
}

void main(List<String> arguments) 
{
  var kq = namNhuan(2023);
  print(kq);
}
