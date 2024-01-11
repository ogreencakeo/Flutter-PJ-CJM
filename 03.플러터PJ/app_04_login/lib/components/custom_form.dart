// 입력폼 양식 위젯 ///////////
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CoustomForm extends StatelessWidget {
  // Form 위젯에서 사용하는 전역상태 관리변수 만들기
  final _formKey = GlobalKey<FormState>();
  // -> 입력폼이 변경될때 여기에  반응하는 상태를 관리함!

  const CoustomForm({Key? key}) : super(key: key);

  // 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 플러터의 입력양식은 Form 위젯에서 관리함
    return Form(
      // 전역 key를 Form에 연결하여 해당 key로
      // Form 상태를 관리한다. 필수!
      key: _formKey,
      // 구성요소 속성 :수직방향 위젯 사용!
      child: Column(
        children: [
          // 1.이메일 입력양식 (글자 + 입력폼)

          SizedBox(height: mediumGap),
          // 2.비밀번호 입력양식 (글자 + 입력폼)
          
          SizedBox(height: largeGap),
          // 3.TextButton 로그인 버튼
          TextButton(
            // 대상을 누를때 발생
            onPressed: () {
              // debugPrint('나눌렸어?');
              // 라우터 이동은 Navigator
              // pushNamed() 메서드로!!!
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
