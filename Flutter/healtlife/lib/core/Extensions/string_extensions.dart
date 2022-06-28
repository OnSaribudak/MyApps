extension SplitExtensions on String {
  String splitAndRemoveLast({Pattern pattern = " "}) =>
      split(pattern).getRange(0, split(pattern).length - 1).join(' ');

  String splitAndGetLast({Pattern pattern = " "}) => split(pattern).last;
}
