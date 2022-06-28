import 'package:flutter/material.dart';
import 'package:instagram/MyAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: anaYapi(),
    );
  }
}

Widget anaYapi() {
  return Scaffold(
    appBar: myAppBar(),
    body: anaSayfaList(),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Arama"),
        BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: "Arama"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Arama")
      ],
    ),
  );
}

ListView anaSayfaList() {
  return ListView(
    children: [anaSayfa()],
  );
}

Column anaSayfa() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            storyMap(),
          ],
        ),
      ),
      post(name: "osman_nuri", postImage: "assets/images/32154.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/....jpg"),
      post(name: "osman_nuri", postImage: "assets/images/AzbfY7Z.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/DRh5jbY.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/f6dd977cc74add3152f2e51cdd354c85.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/kitap_1570953070.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/kucuk-prens-ozet-770x433.jpg"),
      post(
          name: "osman_nuri",
          postImage:
              "assets/images/kücük_prens_bilinmeyenler_kapak-620x375.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/Y3vhT8w.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/3e5cf969723163bb63531c368faf6ed0.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/6e65eb78fd1f868be10b1ec996aae7a4.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/90a56df6960a0511558b023ca544c58b.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/unnamed.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/kucuk-prens-ozet-770x433.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/CYCKLNdUsAAVNt8.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/b4f735b2ea7ff28f35189d58414a3e4e.jpg"),
      post(
          name: "osman_nuri",
          postImage: "assets/images/a8bcb9167f42ac82dcbbeb953c3f61de.jpg"),
      post(
          name: "osman_nuri",
          postImage:
              "assets/images/kücük_prens_bilinmeyenler_kapak-620x375.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/kitap_1570953070.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/32154.jpg"),
      post(name: "osman_nuri", postImage: "assets/images/32154.jpg"),
    ],
  );
}

Column post({String? name, String? postImage, String? profilImage}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      postUstAlan(name: name, profilImage: profilImage),
      postalan(postImage: postImage),
      postAltAlan(),
      like(),
      PostDate()
    ],
  );
}

Padding PostDate() {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Text("Ağustos 2021"),
  );
}

Widget like() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 10,
            ),
            Positioned(
              child: CircleAvatar(
                radius: 10,
              ),
              left: 100,
            ),
            CircleAvatar(
              radius: 10,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text("Gürkan... ve 150 diğer kişigönderini beğendi"),
        )
      ],
    ),
  );
}

Padding postalan({String? postImage}) {
  return Padding(
    padding: const EdgeInsets.only(top: 0.8),
    child: Container(
      child: Image.asset(postImage!),
    ),
  );
}

Container postUstAlan({String? name, String? profilImage}) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              postAltAtan(name: name, profilImage: profilImage),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
      ],
    ),
  );
}

Container postAltAlan() {
  return Container(
    child: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              postAtan(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline))
            ],
          ),
        ),
      ],
    ),
  );
}

Row postAtan() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
      IconButton(onPressed: () {}, icon: Icon(Icons.maps_ugc_outlined)),
      IconButton(onPressed: () {}, icon: Icon(Icons.set_meal_outlined)),
    ],
  );
}

Row postAltAtan({String? name, String? profilImage}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.amber.shade400,
        ),
      ),
      postAtanKisininAdi(name: name),
    ],
  );
}

Padding postAtanKisininAdi({String? name}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(" "),
  );
}

Container storyMap() {
  return Container(
    color: Colors.white,
    child: Row(
      children: [
        story(userName: "Hikayem", goruldu: false),
        story(userName: "Macıt", goruldu: false),
        story(userName: "Sülüman", goruldu: false),
        story(userName: "Çikarito", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
        story(userName: "Yalil", goruldu: false),
      ],
    ),
  );
}

Widget story({bool? goruldu, String? userName}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [seen(), kullaniciAdi(userName!)],
    ),
  );
}

Padding kullaniciAdi(String userName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(userName),
  );
}

CircleAvatar seen() {
  return CircleAvatar(
    radius: 30,
    backgroundColor: Colors.purple,
    child: proFilfoto(),
  );
}

CircleAvatar proFilfoto() {
  return CircleAvatar(
    radius: 28,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey,
    ),
  );
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      "Instagram",
      style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
    ),
    actions: [
      postEkle(),
      haraketler(),
      mesaj(),
    ],
  );
}

IconButton postEkle() => IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.add_box_outlined,
      color: Colors.black,
    ));
IconButton haraketler() => IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.favorite_border,
      color: Colors.black,
    ));
IconButton mesaj() => IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.maps_ugc_outlined,
      color: Colors.black,
    ));
