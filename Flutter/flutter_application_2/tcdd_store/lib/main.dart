import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('TCDD RESTAURANT'),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
