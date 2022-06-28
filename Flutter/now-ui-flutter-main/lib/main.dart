import 'package:engelsiz_yasam/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:engelsiz_yasam/screens/onboarding.dart';
import 'package:engelsiz_yasam/screens/pro.dart';
import 'package:engelsiz_yasam/screens/profile.dart';
import 'package:engelsiz_yasam/screens/settings.dart';
import 'package:engelsiz_yasam/screens/register.dart';
import 'package:engelsiz_yasam/screens/articles.dart';
import 'package:engelsiz_yasam/screens/components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Now UI PRO Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
          '/settings': (BuildContext context) => new Settings(),
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/pro": (BuildContext context) => new Pro(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/components": (BuildContext context) => new Components(),
          "/account": (BuildContext context) => new Register(),
        });
  }
}
