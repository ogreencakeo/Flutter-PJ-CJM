abstract class Saram{
  Saram(this.name);

  final String name;
  String gender();
  String age();
  String eat() => '$name씨는 지금 아무것도 안먹는다!';
  String say() => '$name씨는 지금 아무말도 안한다!';
}

class KyungSu implements Saram{
  @override
  late String _name;
  String get name => _name;
  set name(String name) => _name = name;

  @override
  String gender() => '$name씨는 남자다!';

  @override
  String age() => '$name씨의 나이는 30살이다.';

  @override
  String eat() => '$name씨는 피자를 먹는다!';

  @override
  String say() => '$name씨는 무엇인가 말하고 있다!';
}

class JeeHyun extends Saram{
  JeeHyun(String name) : super(name);
  @override
  String gender() => '$name씨는 여자다!';
  @override
  String age() => '$name씨는 28살이다!';
}

abstract class Namja extends Saram{
  Namja(String name) : super(name);

  @override
  String gender() => '$name씨는 남자다!';
}

abstract class Yeoja extends Saram{
  Yeoja(String name) : super(name);
  
  String age() => '$name씨는 39살이다.';
  String eat() => '$name씨는 햄버거를 먹는다';
}

class SeoJun extends Namja{
  SeoJun(String name) : super(name);
  String age() => '$name씨는 39살이다.';
  String eat() => '$name씨는 햄버거를 먹는다!';
}

void main(List<String> args) {
  KyungSu ks = KyungSu();
  ks.name = '도경수';
  print(ks.eat());
  print(ks.say());
  print(ks.gender());

  JeeHyun jy = JeeHyun('남지현');
  print(jy.gender());
  print(jy.age());
  print(jy.eat());
  print(jy.say());

  SeoJun sj = SeoJun('박서준');
  print(sj.age());
  print(sj.eat());

}