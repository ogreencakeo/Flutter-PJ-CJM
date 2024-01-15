import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReceipePage extends StatelessWidget {
  const ReceipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: ListView(),
      ),
    );
  }
}

// AppBar _buildRecipeAppBar() {
//   return ();
// }
