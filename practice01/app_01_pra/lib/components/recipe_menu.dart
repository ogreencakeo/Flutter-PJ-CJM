import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(children: [
        _buildMenuItem(Icons.food_bank, 'All'),
        Spacer(),
      ]),
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 70,
    height: 80,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 243, 238, 162),
          Color.fromARGB(100, 217, 22, 5),
          Color.fromARGB(189, 178, 218, 236),
          Color.fromARGB(99, 155, 109, 216),
        ], stops: [
          0.2,
          0.4,
          0.7,
          0.9
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mIcon,
          color: Colors.redAccent,
          size: 30,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )
      ],
    ),
  );
}
