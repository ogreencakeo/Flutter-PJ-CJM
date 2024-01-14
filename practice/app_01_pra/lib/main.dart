import 'package:flutter/material.dart';

void main() {
  print('시작');
  runApp(const MyApp()); // runApp(위젯);
  // 위젯
  //   자식 위젯
  //      자식...
  //   자식 위젯
  //   자식 위젯
  print('종료');
}

class MyApp extends StatelessWidget { // 고정화면
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '플러터 데모 홈페이지'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _onClicked (){
    setState((){
      this._counter++;
      print('_counter : $_counter');
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '하단 버튼을 눌려주세요:',
            ),
            Text(
              '클릭수 : $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
