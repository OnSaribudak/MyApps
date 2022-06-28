import 'package:flutter/material.dart';
import 'package:healtlife/core/Extensions/padding_extension.dart';
import 'package:healtlife/core/Extensions/string_extensions.dart';
import 'package:healtlife/core/Extensions/widget_extensions.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/core/const/my_textstyle.dart';
import 'package:healtlife/pages/third_page.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.isFrame,
    required this.titleColor,
    required this.subTitleColor,
    required this.iconColor,
    required this.isBold,
    required this.width,
    required this.height,
    this.image,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subTitle;
  final Color subTitleColor;
  final bool isFrame;
  final Color titleColor;
  final Color iconColor;
  final bool isBold;
  final double width;
  final double height;
  final Image? image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          // color: MyColors.subTitlecolor2,
          decoration: BoxDecoration(
              border: isFrame
                  ? Border.all(color: MyColors.containerFrame, width: 3)
                  : null,
              color: isFrame ? Colors.white : MyColors.subTitlecolor2,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    title.stackTiles(isBold: true, color: titleColor),
                    Icon(icon, color: iconColor)
                  ],
                ),
              ),
              image ?? Container(),
              Padding(
                padding: lowPadding2Value,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: subTitle.splitAndRemoveLast(),
                      style: TextStyle(
                          color: subTitleColor,
                          fontWeight:
                              isBold ? FontWeight.bold : FontWeight.w500,
                          fontFamily: "SFProDisplay",
                          fontSize: 16.0),
                      children: <TextSpan>[
                        TextSpan(
                            text: " " + subTitle.splitAndGetLast(),
                            style: TextStyle(
                                color: subTitleColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: "SFProDisplay",
                                fontSize: 12.0)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Sp



