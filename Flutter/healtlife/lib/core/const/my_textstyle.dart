import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/widgets/my_stack.dart';

class MyTextStyle {
  static Text mainTitle(String data, {bool isBold = true}) => Text(
        data,
        style: TextStyle(
          fontSize: 28,
          fontFamily: 'SF Pro Display',
          fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
          color: MyColors.titleColor1,
          shadows: const [
            BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0)
          ],
        ),
      );

  static Text mainTitle3(String data, {bool isBold = true}) => Text(
        data,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'SF Pro Display',
          fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
          color: MyColors.titleColor1,
        ),
      );

  static Text subTitle(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'SF Pro Display',
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
          color: MyColors.subtitleColor1,
        ),
      );

  static Text mainTitle2(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: MyColors.titleColor2,
          fontSize: 24,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
        ),
      );

  static Text subTitle2(String data, {bool isBold = false}) => Text(data,
      style: TextStyle(
          color: MyColors.subTitlecolor2,
          fontWeight: isBold ? FontWeight.w500 : FontWeight.w500,
          fontFamily: "SFProDisplay",
          fontSize: 16.0));

  static Text thirdPageTitle(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
            color: MyColors.subTitlecolor2,
            fontWeight: FontWeight.w700,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.normal,
            fontSize: 32.0),
      );

  static Text thirdPageTitle2(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
            color: Color(0x665142ab),
            fontWeight: FontWeight.w400,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.normal,
            fontSize: 16.0),
      );
  static Text thirdPageBody(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
          color: MyColors.titleColor1,
          fontSize: 20,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
        ),
      );

  static Text thirdPageBody2(String data, {bool isBold = false}) => Text(
        data,
        style: TextStyle(
            color: MyColors.purple,
            fontWeight: FontWeight.w500,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.normal,
            fontSize: 14.0),
      );
}

extension TextStyleExtension on String {
  Text stackTiles({bool isBold = false, Color color = Colors.white}) => Text(
        this,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'SF Pro Display',
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
          color: color,
        ),
      );
}
