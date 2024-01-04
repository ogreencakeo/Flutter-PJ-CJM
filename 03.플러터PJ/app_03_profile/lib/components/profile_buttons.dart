// 프로파일 버튼 클래스
import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  // 앱 빌드 재정의!
  @override
  Widget build(BuildContext context) {
    // 버튼은 수평방향으로 진행하므로 Row()
    return Row(
      children: [
        // 버튼위젯 메서드 호출
        // Follow 버튼 : _buildFollowButton()
        // Message 버튼 : _buildMessageButton()
      ],
    );
  }
}

/*
  [ 플러터에서 버튼 만들기 4가지 방법 ]
  1. TextButton 위젯 : 버튼 자체 디자인 없고 기능만 있음
*/

// Follow 버튼 위젯 메서드
Widget _buildFollowButton() {
  // return
}
