import 'package:flutter/material.dart';

void main()=>runApp(LoadingPage());

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}


class _LoadingPageState extends State<LoadingPage> {

  Future<String> delayTime() async {
    String txt = await Future.delayed(Duration(seconds: 10), () {
      return 'สวัสดีจ้า';
    });
    return txt;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: delayTime(),
              builder: (BuildContext context,AsyncSnapshot snapshot){
                if(snapshot.hasData){
                  //จัดหน้าจอ
                  return Center(

                      child: Column(
                          children: [
                            Image.network("https://i.pinimg.com/736x/b2/81/f8/b281f8ff13b7d9017b4a25ec07f41100.jpg"),
                            Text("ปลายฟ้า อินทร์อยู่",
                              ),
                          ]
                      )
                  );
                } else if(snapshot.hasError){
                  return Text('Error');
                } else{
                  return CircularProgressIndicator();
                }
              }
          ),
        ),
      ),
    );
  }
}
