import 'package:cau3/cau3.dart' as cau3;

void inTamGiacPascal(int n) {
  List<List<int>> tamGiac = [];

  for (int i = 0; i < n; i++) {
    List<int> hang = [];

    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        hang.add(1);
      } else {
        int giaTri = tamGiac[i - 1][j - 1] + tamGiac[i - 1][j];
        hang.add(giaTri);
      }
    }

    tamGiac.add(hang);
  }

  for (int i = 0; i < n; i++) {
    String space = "";
    for (int j = 0; j <= i; j++) {
      space += "${tamGiac[i][j]} ";
    }
    print(space);
  }
}

void main(List<String> arguments) {
  int n = 5;

  inTamGiacPascal(n);
}
