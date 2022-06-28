import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Flutter Database Example',
    home: MyHomePage(app: app),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.app}) : super(key: key);

  final FirebaseApp app;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DatabaseReference _counterRef;
  late DatabaseReference _messagesRef;
  late StreamSubscription<Event> _counterSubscription;
  late StreamSubscription<Event> _messagesSubscription;
  int _counter = 0;
  DatabaseError? _error;

  @override
  void initState() {
    super.initState();
    // Demonstrates configuring to the database using a file
    _counterRef = FirebaseDatabase.instance.reference().child('counter');
    // Demonstrates configuring the database directly
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _messagesRef = database.reference().child('messages');
    database.reference().child('counter').get().then((DataSnapshot? snapshot) {
      print(
          'Connected to directly configured database and read ${snapshot!.value}');
    });

    database.setLoggingEnabled(true);

    if (!kIsWeb) {
      database.setPersistenceEnabled(true);
      database.setPersistenceCacheSizeBytes(10000000);
      _counterRef.keepSynced(true);
    }
    _counterSubscription = _counterRef.onValue.listen((Event event) {
      setState(() {
        _error = null;
        _counter = event.snapshot.value ?? 0;
      });
    }, onError: (Object o) {
      final DatabaseError error = o as DatabaseError;
      setState(() {
        _error = error;
      });
    });
    _messagesSubscription =
        _messagesRef.limitToLast(10).onChildAdded.listen((Event event) {
      print('Child added: ${event.snapshot.value}');
    }, onError: (Object o) {
      final DatabaseError error = o as DatabaseError;
      print('Error: ${error.code} ${error.message}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Database Example'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Checkbox(
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    // _anchorToBottom = value;
                  });
                }
              },
              value: false,
            ),
            title: const Text('Anchor to bottom'),
          ),
          Flexible(
            child: FirebaseAnimatedList(
              key: ValueKey<bool>(false),
              query: _messagesRef,
              reverse: false,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(
                    trailing: IconButton(
                      onPressed: () =>
                          _messagesRef.child(snapshot.key!).remove(),
                      icon: const Icon(Icons.delete),
                    ),
                    title: Text(
                      '$index: ${snapshot.value.toString()}',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
