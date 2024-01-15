import 'package:flutter/material.dart';

class PecipePage extends StatelessWidget {
  const PecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: ListView(
          children: [],
        ),),
    )
  }
}
