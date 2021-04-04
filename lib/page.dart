import 'package:flutter/material.dart';

void main() => runApp(MyPage());

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var myMessage;

  Future<String> delayTime() async {
    String txt = await Future.delayed(Duration(seconds: 3), () {
      return 'Hello';
    });
    return txt;
  }

  Widget showText() {
    delayTime().then((msg) {
      print(msg);
      myMessage = msg;
    });
    return Text(myMessage);
  }

  @override
  void initState() {
    delayTime();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: showText(),
      ),
    );
  }
}
