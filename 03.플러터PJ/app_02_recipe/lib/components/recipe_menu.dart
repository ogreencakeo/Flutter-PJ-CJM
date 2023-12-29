// 황금 레시피 페이지 메뉴 클래스 //////////////
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          // 박스형 메뉴 생성 메서드 호출
          _buildMenuItem(Icons.food_bank, 'All'),
          Spacer(),
          _buildMenuItem(Icons.emoji_food_beverage, 'Coffe'),
          Spacer(),
          _buildMenuItem(Icons.fastfood, 'Burger'),
          Spacer(),
          _buildMenuItem(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }
}

// 메뉴 구성 위젯을 리턴하는 메서드
// 하위 메서드이므로 언더바로 시작하는 이름 사용
// 각 메뉴별 변경요소 전달 값으로 받아서 처리
// 전달변수 : 1. 아이콘 / 2. 텍스트
Widget _buildMenuItem(IconData mIcon, String text) {
  // 박스를 구성하는 container 위젯
  // 박스는 크기를 가진다. 따라서 width, height 속성이 필수 !
  return Container(
    // 1. 가로, 세로 크기 지정
    width: 70,
    height: 80,
    // 2. 박스 세부옵션 설정 - decoration
    decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
    // 3. 박스 하위요소 속성 : 단일요소 -> child
    child: Column(
        // 박스 세로정렬 중앙
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 3-1. 아이콘
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          // 내가 원하는 크기만큼 사이간격주는
          // 방법은 SizedBox(width / height)
          SizedBox(
            height: 3,
          ),
          // 3-2. 글자
          Text(
            text,
            style: TextStyle(
              color: Colors.red.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ]),
  );
}
