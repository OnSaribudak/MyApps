import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:engelsiz_yasam/constants/Theme.dart';

//widgets
import 'package:engelsiz_yasam/widgets/navbar.dart';
import 'package:engelsiz_yasam/widgets/input.dart';

import 'package:engelsiz_yasam/widgets/drawer.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkboxValue = false;

  final double height = window.physicalSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          transparent: true,
          title: "",
          reverseTextcolor: true,
        ),
        extendBodyBehindAppBar: true,
        drawer: NowDrawer(currentPage: "Mağza"),
        body: SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 16.0, right: 16.0, bottom: 32),
              child: Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.78,
                      color: NowUIColors.bgColorScreen,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ListView(
                            children: [
                              Card(child: product(context)),
                              SizedBox(height: 10,),
                               Card(child: product(context)),
                               SizedBox(height: 10,),
                                Card(child: product(context)),
                                SizedBox(height: 10,),
                                 Card(child: product(context)),
                                 SizedBox(height: 10,),
                             
                            ],
                          ),
                        ),
                      ))),
            ),
          ]),
        ));
  }

  Column product(BuildContext context) {
    return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 24.0, bottom: 8),
                                      child: Center(
                                          child: Text("Akıllı Baston",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600))),
                                    ),
                                    Center(
                                          child: Text("200 TL",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600))),
                                  Center(
                                    child: Container(
                                      
                                      height: 300,
                                      child: Image.asset("assets/imgs/register-bg.png"),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                   
                                    Center(
                                      child: RaisedButton(
                                        textColor: NowUIColors.white,
                                        color: NowUIColors.primary,
                                        onPressed: () {
                                          // Respond to button press
                                          Navigator.pushReplacementNamed(
                                              context, '/home');
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0),
                                        ),
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 32.0,
                                                right: 32.0,
                                                top: 12,
                                                bottom: 12),
                                            child: Text("Sepete Ekle",
                                                style:
                                                    TextStyle(fontSize: 14.0))),
                                      ),
                                    ),
                                  ],
                                );
  }
}
