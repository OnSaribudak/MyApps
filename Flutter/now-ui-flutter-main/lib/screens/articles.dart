import 'package:engelsiz_yasam/constants/Theme.dart';
import 'package:engelsiz_yasam/screens/profile.dart';
import 'package:engelsiz_yasam/screens/profile.dart';
import 'package:engelsiz_yasam/screens/profile.dart';
import 'package:engelsiz_yasam/screens/profile.dart';
import 'package:engelsiz_yasam/widgets/card-category.dart';
import 'package:engelsiz_yasam/widgets/card-horizontal.dart';
import 'package:engelsiz_yasam/widgets/card-small.dart';
import 'package:engelsiz_yasam/widgets/card-square.dart';
import 'package:engelsiz_yasam/widgets/drawer.dart';
import 'package:engelsiz_yasam/widgets/navbar.dart';
import 'package:engelsiz_yasam/widgets/slider-product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:engelsiz_yasam/constants/Theme.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'profile.dart';

// import 'package:now_ui_flutter/screens/trending.dart';
// import 'package:now_ui_flutter/screens/fashion.dart';
// import 'package:now_ui_flutter/screens/notifications.dart';
// import 'package:now_ui_flutter/screens/search.dart';
// import 'package:now_ui_flutter/screens/cart.dart';






final Map<String, Map<String, dynamic>> articlesCards = {
  "Ice Cream": {
    "title": "Ice cream is made with carrageenan …",
    "image":
        "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"
  },
  "Makeup": {
    "title": "Is makeup one of your daily esse …",
    "image":
        "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
  },
  "Coffee": {
    "title": "Coffee is more than just a drink: It’s …",
    "image":
        "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80"
  },
  "Fashion": {
    "title": "Fashion is a popular style, especially in …",
    "image":
        "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80"
  },
  "Argon": {
    "title": "Argon is a great free UI packag …",
    "image":
        "https://images.unsplash.com/photo-1482686115713-0fbcaced6e28?fit=crop&w=1947&q=80"
  },
  "Music": {
    "title": "View article",
    "image":
        "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?fit=crop&w=2700&q=80",
    "products": [
      {
        "img":
            "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?fit=crop&w=2700&q=80",
        "title": "Painting Studio",
        "description":
            "You need a creative space ready for your art? We got that covered.",
        "price": "\$125",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1500628550463-c8881a54d4d4?fit=crop&w=2698&q=80",
        "title": "Art Gallery",
        "description":
            "Don't forget to visit one of the coolest art galleries in town.",
        "price": "\$200",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1496680392913-a0417ec1a0ad?fit=crop&w=2700&q=80",
        "title": "Video Services",
        "description":
            "Some of the best music video services someone could have for the lowest prices.",
        "price": "\$300",
      },
    ],
    "suggestions": [
      {
        "img":
            "https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80",
        "title": "Music studio for real..."
      },
      {
        "img":
            "https://images.unsplash.com/photo-1477233534935-f5e6fe7c1159?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80",
        "title": "Music equipment to borrow..."
      },
    ]
  }
};

class Articles extends StatelessWidget {
  BuildContext context;
  @override
  final double circleRadius = 120.0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          searchBar: false,
          title: "Partnerler",
          rightOptions: false,
        ),
        backgroundColor: NowUIColors.bgColorScreen,
        drawer: NowDrawer(currentPage: "Articles"
        ),
        body:
        


        
              profile(),
              
            
          
        
);
  }

  Container profile() {
    return Container(
  height: double.infinity,
  width: double.infinity,
  color: Colors.white,
  child: ListView(
    children: [
      
      profileShow("Ayşe Çalık","Yakutiye, Erzurum","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",5,"Çevrimiçi",Colors.green),
      profileShow("İlker Demirci","Yakutiye, Erzurum","https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",5,"Çevrimiçi",Colors.green),
      profileShow("Merve Girdap","Yakutiye, Erzurum","https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",4,"Çevrimiçi",Colors.green),
  profileShow("Yakup Çetin","Yakutiye, Erzurum","https://res.cloudinary.com/fleetnation/image/private/c_fit,w_1120/fl_no_overflow,g_south,l_text:style_gothic2:%C2%A9%20ikostudio,o_20,y_10/fl_no_overflow,g_center,l_watermark4,o_25,y_50/v1454956716/ufx48jpdmmyaglyrxbvj.jpg",5,"Çevrimdışı",Colors.grey),
      profileShow("Zeynep İlmin","Yakutiye, Erzurum","https://3.bp.blogspot.com/-gLMNOr9g1sI/XAz51JsIJLI/AAAAAAABtoQ/rUSAvXrTEYkyAaw8AMdKqmlIsSe4afZDgCLcBGAs/s1600/4e20ebd9c71ab52ae161e8008a46ae34.jpg",5,"Çevrimdışı",Colors.grey),
      profileShow("Cem Koçak","Yakutiye, Erzurum","https://i.pinimg.com/236x/7c/9e/8c/7c9e8c53c1432a3c996ce709b57867f6--social-media-medium.jpg",4,"Çevrimdışı",Colors.grey), 
    ],
  ),
);
  }

  Stack profileShow(String name, String city, String url, double star, String statu,Color color) {
    return Stack(children: <Widget>[

      Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding:
                      EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
                      child: Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: circleRadius/2,),

                                  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      
                                      Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0),),
                                      Icon(Icons.verified,color: Colors.blue,)
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text(city, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.lightBlueAccent),),

                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                    child:RatingBar.builder(
   initialRating: star,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),

                                  ),
                                  SizedBox(height: 10,),
                                  FlatButton(
                                    child: Container(
                      child: Center(
                          child: Column(
                    children: [
                      Container(
                          
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(statu,
                                  style: TextStyle(
                                      color: color,
                                      fontWeight: FontWeight.w600))))]))),
                                    onPressed: (){
                                    
                                     
                                    },)
                                ],
                              )
                        ),
                      ),
                    ),

                    



                    ///Image Avatar
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new NetworkImage(url),
                      fit: BoxFit.fill,
                  ),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                     
                    ),
                  ],
                ),
      ),
    ]);
  }

  void setSate(Null Function() param0) {}
}
