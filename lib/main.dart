import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Future<void> delayTime() async{
    await Future.delayed(Duration(seconds: 3),(){print('Hello');});
    Future.delayed(Duration(seconds: 2),(){print('Bye');});
  }
  @override
  void initState(){
    delayTime();
  }
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(),);
  }
}
