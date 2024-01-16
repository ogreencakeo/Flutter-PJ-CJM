import 'package:flutter/material.dart';

class TvInfo extends StatefulWidget {
  const TvInfo({Key? key}) : super(key: key);

  @override
  State<TvInfo> createState() => _TvInfoState();
}

class _TvInfoState extends State<TvInfo> {
  int sequenceNum = 0;

  // Tv정보 리스트
  Map<String, List> tvImageInfo = {
    "극장판": [
      'assets/movie/1.jpg',
      'assets/movie/2.jpg',
      'assets/movie/3.jpg',
      'assets/movie/4.jpg',
      'assets/movie/5.jpg',
      'assets/movie/6.jpg',
    ],
    "명량/코믹": [
      'assets/comic/1.jpg',
      'assets/comic/2.jpg',
      'assets/comic/3.jpg',
      'assets/comic/4.jpg',
      'assets/comic/5.jpg',
      'assets/comic/6.jpg',
    ],
    "액션/모험": [
      // 'assets/action/1.jpg',
      'assets/1.jpg',
      'assets/action/2.jpg',
      'assets/action/3.jpg',
      'assets/action/4.jpg',
      'assets/action/5.jpg',
      'assets/action/6.png'
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 선택 버튼
        _buildSelect(),
        _buildTvInfo(),
      ],
    );
  }

  // 선택 버튼
  Widget _buildSelect() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          _buildButton(0, '극장판'),
          _buildButton(1, '명량/코믹'),
          _buildButton(2, '액션/모험'),
        ],
      ),
    );
  }

  Widget _buildButton(int seq, String btnTxt) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: seq == sequenceNum ? Colors.pink : Colors.white10,
          borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {
          setState(() {
            sequenceNum = seq;
          });
        },
        child: Text(
          btnTxt,
          style: TextStyle(
              color: seq == sequenceNum ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Tv 정보
  Widget _buildTvInfo() {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildTvBox(),
          ],
        ));
  }

  Widget _buildTvBox() {
    // 현재 선택된 버튼에 해당하는 이미지 리스트
    List<String> selectedImages = (tvImageInfo.values.toList()[sequenceNum] as List).cast<String>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          for (String imagePath in selectedImages) _buildImageBox(imagePath),
        ],
      ),
    );
  }

  Widget _buildImageBox(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
