import 'dart:io';

class Sum {
  int sum = 0;
  int number;
  Sum(this.number); 
  int calculateSum() {
    if (number < 0) {
      return number;
    }
    else {
      while(number > 0) {
        sum += number % 10;
        number ~/= 10;      
      }
    }
    return sum;
  }
}

void main() {
  stdout.write('정수를 입력하시오 : ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? number = int.tryParse(input);

    if (number == null) {
      print("올바른 정수를 입력하세요.");
    }
    else {
      Sum calculator = Sum(number);
      print("결과 : ${calculator.calculateSum()}");
    }
  }
  else {
    print("입력이 없습니다.");
  }
}
