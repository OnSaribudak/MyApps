import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyBoxDesing(
                      child: Container(),
                      colors: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: MyBoxDesing(
                      child: Container(),
                      colors: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: MyBoxDesing(
                child: Container(),
                colors: Colors.white,
              ),
            ),
            Expanded(
              child: MyBoxDesing(
                child: Container(),
                colors: Colors.white,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyBoxDesing(
                      child: Container(),
                      colors: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: MyBoxDesing(
                      child: Container(),
                      colors: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class MyBoxDesing extends StatelessWidget {
  final Color colors;
  final Widget child;

  MyBoxDesing({required this.colors,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colors),
    );
  }
}
