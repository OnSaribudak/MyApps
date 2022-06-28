import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/core/const/my_textstyle.dart';
import 'package:healtlife/pages/third_page.dart';
import 'package:healtlife/widgets/main_bottom.dart';
import 'package:healtlife/widgets/main_button.dart';
import 'package:healtlife/widgets/my_stack.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        bottomNavigationBar: const MainBottom(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: MainButton(icon: Icons.add),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerField(),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        card1(),
                        card2(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            card3(),
                            card4(),
                          ],
                        ),
                        MyStack(
                          width: 154,
                          height: 269,
                          title: "Calories",
                          icon: Icons.local_fire_department,
                          subTitle: "540 kcal",
                          isFrame: true,
                          titleColor: MyColors.containerTitle,
                          subTitleColor: MyColors.subTitlecolor2,
                          iconColor: MyColors.subTitlecolor2,
                          isBold: true,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdPage()),
                            );
                          },
                          image: Image.asset(
                            "assets/images/lines.png",
                            fit: BoxFit.cover,
                            // width: 100,
                            // height: 38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding card4() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MyStack(
        width: 154,
        height: 101,
        title: "Sleep",
        icon: Icons.hotel_rounded,
        subTitle: "06:32 hours",
        isFrame: true,
        titleColor: MyColors.containerTitle,
        subTitleColor: MyColors.subTitlecolor2,
        iconColor: MyColors.subTitlecolor2,
        isBold: true,
      ),
    );
  }

  MyStack card3() {
    return MyStack(
      width: 154,
      height: 148,
      title: "Walk",
      icon: Icons.directions_walk_rounded,
      subTitle: "",
      isFrame: true,
      titleColor: MyColors.containerTitle,
      subTitleColor: MyColors.subTitlecolor2,
      iconColor: MyColors.subTitlecolor2,
      isBold: true,
      image: Image.asset("assets/images/derege.png",
          width: 64, height: 64, fit: BoxFit.cover),
    );
  }

  MyStack card2() {
    return MyStack(
      width: 154,
      height: 209,
      title: "Water",
      icon: Icons.opacity_sharp,
      subTitle: "1.0 Liters",
      isFrame: true,
      titleColor: MyColors.containerTitle,
      subTitleColor: MyColors.subTitlecolor2,
      iconColor: MyColors.subTitlecolor2,
      isBold: true,
      image: Image.asset(
        "assets/images/wate.png",
      ),
    );
  }

  MyStack card1() {
    return MyStack(
      width: 154,
      height: 209,
      title: "Heart",
      icon: Icons.favorite,
      subTitle: "105 bmp",
      isFrame: false,
      titleColor: MyColors.white,
      subTitleColor: MyColors.subGreyy,
      iconColor: MyColors.pale_purple,
      isBold: false,
    );
  }

  Row headerField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MyTextStyle.mainTitle2("Hi, Nam Duong", isBold: true),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextStyle.subTitle2("Wednesday 29 Dec"),
            ),
          ],
        ),
        ClipRRect(
          // backgroundImage:NetworkImage("https://d1dlh1v05qf6d3.cloudfront.net/information/uploads/2018/07/Karen-Lewis-3-1260x840.jpg"),
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            "assets/images/profilePhoto.jpg",
            width: 44,
            height: 44,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}


//resimleri sorr


