import 'package:app_01_pra/pages/receipe_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamilyFallback: ['PatuaOne', 'Diphylleia'],
      ),
      home: ReceipePage(),
    );
  }
}
