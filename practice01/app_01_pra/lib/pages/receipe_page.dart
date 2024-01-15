import 'package:app_01_pra/components/recipe_menu.dart';
import 'package:app_01_pra/components/recipe_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReceipePage extends StatelessWidget {
  const ReceipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
          ],
        ),
      ),
    );
  }
}

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: [
      Icon(
        CupertinoIcons.search,
        color: const Color.fromARGB(255, 7, 41, 100),
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
