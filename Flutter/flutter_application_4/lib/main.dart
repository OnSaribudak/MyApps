import 'package:flutter/material.dart';
import 'package:flutter_application_4/parameter.dart';
import 'package:flutter_application_4/test.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> selection = [];

  TestQuestions test_1 = TestQuestions();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                test_1.getQuestionString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: (selection),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                      ),
                      onPressed: () {
                        buttonFunction(answerState: false);
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            buttonFunction(answerState: true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }

  void buttonFunction({@required bool? answerState}) {
    if (test_1.isTheTestOver()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Test Over"),
            //content: new Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Again"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    selection = [];
                    test_1.questionReset();
                  });
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.getQestionAnwer() == answerState
            ? selection.add(trueChoose)
            : selection.add(wrongChoose);
        test_1.setQuestionNumber();
      });
    }
  }
}
