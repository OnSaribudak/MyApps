import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';

class MyExpansion extends StatelessWidget {
  const MyExpansion({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.trailing,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
              color: MyColors.metaliGrey,
              fontWeight: FontWeight.w500,
              fontFamily: "SFProDisplay",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColors.blueGrey),
          child: const Icon(Icons.directions_walk, color: MyColors.purple),
        ),
        subtitle: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  style: const TextStyle(
                      color: MyColors.metaliGrey,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SFProDisplay",
                      fontSize: 16.0),
                  text: subTitle),
              const TextSpan(
                  style: TextStyle(
                      color: MyColors.metaliGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProDisplay",
                      fontSize: 14.0),
                  text: "km"),
            ],
          ),
        ),
        trailing: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  style: const TextStyle(
                      color: MyColors.subTitlecolor2,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SFProDisplay",
                      fontSize: 24.0),
                  text: trailing),
              const TextSpan(
                  style: TextStyle(
                      color: MyColors.subTitlecolor2,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProDisplay",
                      fontSize: 12.0),
                  text: "kcal"),
            ],
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [abc("Duration"), cba("12:02:12")]),
                Column(children: [abc("Duration"), cba("12:02:12")]),
                Column(children: [abc("Duration"), cba("12:02:12")]),
              ],
            ),
          )
        ],
        collapsedIconColor: Colors.red,
        maintainState: true,
      ),
    );
  }

  Text cba(c) => Text(
        c,
        style: const TextStyle(
            color: MyColors.metaliGrey,
            fontWeight: FontWeight.w700,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.normal,
            fontSize: 14.0),
      );

  Text abc(String a) => Text(
        a,
        style: const TextStyle(
            color: MyColors.expanColor,
            fontWeight: FontWeight.w400,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.normal,
            fontSize: 14.0),
      );
}
