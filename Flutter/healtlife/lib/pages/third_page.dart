import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/core/const/my_textstyle.dart';
import 'package:healtlife/pages/second_page.dart';
import 'package:healtlife/widgets/my_expansion.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          MyColors.containerFrame,
          Colors.white,
        ],
      )),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Container(
                width: 327,
                height: 28,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: MyColors.titleColor1,
                        ),
                      ),
                    ),
                    MyTextStyle.mainTitle3("Calories"),
                    Padding(padding: EdgeInsets.all(8))
                  ],
                ),
              ),
            ),
          ),
          MyTextStyle.thirdPageTitle("540"),
          MyTextStyle.thirdPageTitle2("calories burned"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              "assets/images/page3.png",
              width: 500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextStyle.thirdPageBody('Workouts'),
              SizedBox(),
              SizedBox(),
              MyTextStyle.thirdPageBody2("Show All")
            ],
          ),
          MyExpansion(
            title: "Outdoor Run",
            subTitle: "1,31",
            trailing: "140 ",
          ),
          MyExpansion(
            title: "Outdoor Run",
            subTitle: "0,81",
            trailing: "40 ",
          ),
          MyExpansion(
            title: "Outdoor Run",
            subTitle: "1,76",
            trailing: "150 ",
          ),
        ],
      ),
    ));
  }
}
