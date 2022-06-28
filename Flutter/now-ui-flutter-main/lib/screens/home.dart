import 'package:flutter/material.dart';

import 'package:engelsiz_yasam/constants/Theme.dart';

//widgets
import 'package:engelsiz_yasam/widgets/navbar.dart';
import 'package:engelsiz_yasam/widgets/card-horizontal.dart';
import 'package:engelsiz_yasam/widgets/card-small.dart';
import 'package:engelsiz_yasam/widgets/card-square.dart';
import 'package:engelsiz_yasam/widgets/drawer.dart';

// import 'package:now_ui_flutter/screens/product.dart';

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Dünyada 284 milyon görme engelli var",
    "image":
        "https://im.haberturk.com/2014/10/09/ver1412836945/997825_620x410.jpg"
  },
  "Makeup": {
    "title": "Engelliler dünyada yapılan yasal düzenlemeler",
    "image":
        "https://www.medikalakademi.com.tr/wp-content/uploads/2020/01/engelli-duyma-gorme-1.jpg"
  },
  "Coffee": {
    "title": "SDH'dan Görme Engelliler İçin Etkinlik",
    "image":
        "https://www.habersanliurfa.net/images/haberler/2021/06/sdh-dan-gorme-engelliler-icin-etkinlik.jpg"
  },
  "Fashion": {
    "title": "Görme Engellilerin Can Yoldaşı Rehber Köpekler",
    "image":
        "https://www.oggusto.com/UserFiles/Image/images/temmuz2020/Rehber-Ko%cc%88pekler-Derneg%cc%86i-2.jpg"
  },
  "Argon": {
    "title": "Görme Engelliler için Sesli Kitap Dinle ",
    "image":
        "https://i.pinimg.com/originals/0d/87/8e/0d878eeb3fc40ec48f0cc3983f1f793a.png"
  }
};

class Home extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Home",
          searchBar: false,
          categoryOne: "Trendler",
          categoryTwo: "Haberler",
        ),
        backgroundColor: NowUIColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: NowDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: CardHorizontal(
                      cta: "Daha fazla...",
                      title: homeCards["Ice Cream"]['title'],
                      img: homeCards["Ice Cream"]['image'],
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      }),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardSmall(
                        cta: "Daha fazla... ",
                        title: homeCards["Makeup"]['title'],
                        img: homeCards["Makeup"]['image'],
                        tap: () {}),
                    CardSmall(
                        cta: "Daha fazla...",
                        title: homeCards["Coffee"]['title'],
                        img: homeCards["Coffee"]['image'],
                        tap: () {
                          Navigator.pushNamed(context, '/pro');
                        })
                  ],
                ),
                SizedBox(height: 8.0),
                CardHorizontal(
                    cta: "Daha fazla...",
                    title: homeCards["Fashion"]['title'],
                    img: homeCards["Fashion"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: CardSquare(
                      cta: "Daha fazla...",
                      title: homeCards["Argon"]['title'],
                      img: homeCards["Argon"]['image'],
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
