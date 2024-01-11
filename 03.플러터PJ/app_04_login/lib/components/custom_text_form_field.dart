// 입력폼 양식요소 위젯 : 글자 + 입력폼 요소
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // 텍스트를 입력받아 사용함
  final String text;
  // 생성자 함수에 this 키워드로 텍스트 초기화 연결
  const CustomTextFormField(this.text, {Key? key}) : super(key: key);

  // 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 필드 설명과 입력 양식폼은수직으로 배치됨
    return Column(
      children: [
        // 1. 필드설명
        Text(text),
        SizedBox(height: smallGap),
        // 2. 텍스트 입력폼 양식 -> TextFormField()
        TextFormField(
          // 2-1.유효성 검사 셋팅 (출력 메시지)
          // !(느낌표)는 절때 null이 아님을 의미한다.
          // 비었으면 메시지 / null은 메시지 없음
          validator: (value) => value!.isEmpty? "Please enter some text" : null 
        ),
      ],
    );
  }
}
