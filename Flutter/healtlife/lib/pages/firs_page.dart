import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_textstyle.dart';
import 'package:healtlife/pages/second_page.dart';

import 'package:healtlife/widgets/main_button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  imageField(),
                  titleField(),
                ],
              ),
              MainButton(
                // Within the `FirstRoute` widget
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                icon: Icons.arrow_forward_ios,
              )
            ],
          ),
        ),
      )),
    );
  }

  Padding titleField() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            title(),
            Padding(padding: EdgeInsets.all(8)),
            subTitle(),
          ],
        ),
      );

  Padding subTitle() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyTextStyle.subTitle(
            "Track your daily water intake in just a few taps!"),
      );

  Padding title() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyTextStyle.mainTitle("Your body need water", isBold: true),
      );

  Padding imageField() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/images/image1.png",
          width: 375,
          height: 232,
          fit: BoxFit.cover,
        ),
      );
}
