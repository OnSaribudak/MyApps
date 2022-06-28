import 'package:flutter/material.dart';
import 'package:flutter_application_4/qustions.dart';

int _questionsNumber = 0;

class TestQuestions {
  List<Question> _questionBank = [
    Question('1.Titanic gelmiş geçmiş en büyük gemidir', false),
    Question('2.Dünyadaki tavuk sayısı insan sayısından fazladır, true', true),
    Question('3.Kelebeklerin ömrü bir gündür', false),
    Question('4.Dünya düzdür', false),
    Question('5.Kaju fıstığı aslında bir meyvenin sapıdır', true),
    Question('6.Fatih Sultan Mehmet hiç patates yememiştir', true),
    Question('7.Fransızlar 80 demek için, 4 - 20 der', true),
  ];

  String getQuestionString() {
    return _questionBank[_questionsNumber].questionString;
  }

  bool getQestionAnwer() {
    return _questionBank[_questionsNumber].questionAnswer;
  }

  void setQuestionNumber() {
    if (_questionsNumber + 1 < _questionBank.length) {
      _questionsNumber++;
    }
  }

  bool isTheTestOver() {
    if (_questionsNumber + 1 >= _questionBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void questionReset() {
    _questionsNumber = 0;
  }
}
