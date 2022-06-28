import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  EdgeInsetsGeometry get lowPaddingValue => const EdgeInsets.all(8);
  EdgeInsetsGeometry get lowPadding2Value => const EdgeInsets.all(12);

  Padding lowPadding() => Padding(padding: lowPaddingValue, child: this);
  Padding lowPadding2() => Padding(padding: lowPadding2Value, child: this);
}
