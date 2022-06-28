import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';

class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    this.onTap,
    this.icon,
  }) : super(key: key);

  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return mainButton();
  }

  GestureDetector mainButton() {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: MyColors.iconColor,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
