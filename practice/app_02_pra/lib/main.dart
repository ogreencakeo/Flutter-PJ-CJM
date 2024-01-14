import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : '플러터 데모',
        theme : ThemeData(
            primaryColor : Colors.blue
        ),
        home : Scaffold(
            appBar : AppBar(
                title : Text('플러터 데모 홈페이지', style : TextStyle(fontSize : 30))
            ),
            body : Text('헬로 플러터'),

        )
    );
  }
}
