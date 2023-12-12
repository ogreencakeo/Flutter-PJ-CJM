void main(List<String> args){
  var myHome = '내집이야~!';
  print(myHome);
  // var는 처음에 할당한 값의 형으로 재할당 해야함!
  // myHome = 32;
  myHome = '너의집도 크다!';
  print(myHome);

  // 다트 언어는 변수의 형을 선언함이 기본이다!
  // 1. 숫자형 : int - 정수 / double - 실수 / num - 정수, 실수
  int number1 = 2023;
  // number1 = '하하'; -> 처음 선언한 형으로만 할당가능
  print(number1);
  double number2 = 7;

}