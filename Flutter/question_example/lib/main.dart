import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp();

  runApp(MyApp(
    appp: app,
  ));
}

class MyApp extends StatefulWidget {
  final FirebaseApp appp;
  const MyApp({Key? key, required this.appp}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final db = FirebaseDatabase.instanceFor(app: widget.appp);
    return MaterialApp(
      home: question(db)
    );
  }

  SafeArea question(FirebaseDatabase db ) {
    return SafeArea(
      child: StreamBuilder<DatabaseEvent>(
          stream: db.ref("Sorular").onValue,
          builder: (context, snapshot) {
            
            String soruSirasi = "Soru_" + "1";
            DataSnapshot hangiSoru =
            snapshot.data!.snapshot.child(soruSirasi);
            String soruMetni = hangiSoru.child("SoruMetni").value.toString();
            String cevapA = hangiSoru.child("A/soruMetni").value.toString();
            String cevapB = hangiSoru.child("B/soruMetni").value.toString();
            String cevapC = hangiSoru.child("C/soruMetni").value.toString();
            String cevapD = hangiSoru.child("D/soruMetni").value.toString();

            bool isTrueA = hangiSoru.child("A/isTrue").value as bool;
            bool isTrueB = hangiSoru.child("B/isTrue").value as bool;
            bool isTrueC = hangiSoru.child("C/isTrue").value as bool;
            bool isTrueD = hangiSoru.child("D/isTrue").value as bool;

            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("Soru Çöz"),
              ),
              body: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: Center(
                      child: Text(soruMetni),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      popup(context, isTrueA);
                                    });
                                  },
                                  child: Text("A) " + cevapA),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      popup(context, isTrueB as bool);
                                      
                                    
                                    });
                                  },
                                  child: Text("B) " + cevapB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                popup(context, isTrueC as bool);
                                
                                
                              });
                            },
                            child: Text("C) " + cevapC),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                popup(context, isTrueD as bool);
                               
                              });
                            },
                            child: Text("D) " + cevapD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            );
          }),
    );
  }

  Future<String?> popup(
    BuildContext context,
    bool answerPopup, 
  ) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: answerPopup == true
            ? const Center(child: Text("Doğru Cevap"))
            : const Center(child: Text("Yanlış Cevap")),
        content: answerPopup == true
            ? Icon(
                Icons.check_circle_outline_outlined,
                size: 100,
                color: Colors.green,
              )
            : Icon(
                Icons.highlight_off_outlined,
                size: 100,
                color: Colors.red,
              ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
         
             
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
