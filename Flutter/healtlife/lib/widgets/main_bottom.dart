import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/core/Extensions/padding_extension.dart';

class MainBottom extends StatelessWidget {
  const MainBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 100,
        shape: const CircularNotchedRectangle(),
        notchMargin: 7.0,
        child: SizedBox(
          height: 68,
          child: newMethod2(),
        ));
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit, color: Colors.transparent), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit,
              ),
              label: ""),
        ]);
  }

  BottomAppBar newMethod() {
    return BottomAppBar(
      elevation: 100,
      shape: const CircularNotchedRectangle(),
      notchMargin: 7.0,
      child: newMethod2(),
    );
  }

  Row newMethod2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          children: [
            IconButton(
              color: MyColors.subTitlecolor2,
              icon: const Icon(Icons.home),
              onPressed: () {},
            ).lowPadding2(),
            IconButton(
                    color: MyColors.bottomIcon,
                    icon: const Icon(Icons.tab_rounded),
                    onPressed: () {})
                .lowPadding2(),
          ],
        ),

        // const SizedBox(width: 48.0),
        Row(
          children: [
            IconButton(
              color: MyColors.bottomIcon,
              icon: const Icon(Icons.explore),
              onPressed: () {},
            ).lowPadding2(),
            IconButton(
              color: MyColors.bottomIcon,
              icon: const Icon(Icons.person),
              onPressed: () {},
            ).lowPadding2(),
          ],
        ),
      ],
    );
  }
}
