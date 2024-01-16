import 'package:flutter/material.dart';
import 'package:talent_tv/components/tv_Info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home : TvPage(),
    );
  }
}

class TvPage extends StatelessWidget {
  const TvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildTvAppBar(),
      body: ListView(
        children: [
          TvInfo(),
        ],
      ),
    );
  }

  AppBar _buildTvAppBar(){
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/logo.png', height: 32,),
      ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu))
      ],
    );
  }
}