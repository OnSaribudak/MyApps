import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';

extension ContainerExtension on Widget {
  Container get myContainer =>
      Container(color: MyColors.subTitlecolor2, child: this);
}
