import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int soapNumber = 1;

  int dessertNumber = 1;

  int foodNumber = 1;
  List<String> soapName = [
    'lentil soup',
    'spring soup',
    'chicken soup',
    'wedding soup',
    'yoghurt soup'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'TCDD RESTAURANT',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }

  SafeArea FoodPage() {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  randomNumber();
                },
                child: Image.asset('assets/images/corba_$soapNumber.jpg'),
              ),
            )),
            Text(soapName[soapNumber - 1]),
            Container(
              width: 200,
              child: Divider(
                height: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  onPressed: () {
                    randomNumber();
                  },
                  child: Image.asset('assets/images/tatli_$dessertNumber.jpg')),
            )),
            Text('data'),
            Container(
              width: 200,
              child: Divider(
                height: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.asset('assets/images/yemek_$foodNumber.jpg'),
                onPressed: () {
                  randomNumber();
                },
              ),
            )),
            Text('data'),
            Container(
              width: 200,
              child: Divider(
                height: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void randomNumber() {
    return setState(() {
      dessertNumber = Random().nextInt(5) + 1;
      soapNumber = Random().nextInt(5) + 1;
      foodNumber = Random().nextInt(5) + 1;
    });
  }
}
