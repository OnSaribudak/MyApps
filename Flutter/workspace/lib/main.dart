import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 200,
              bottom: PreferredSize(
                preferredSize: Size(0, 0),
                child: ColoredBox(
                  color: Colors.white,
                  child: TabBar(
                      labelColor: Colors.pinkAccent,
                      indicatorColor: Colors.pinkAccent,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          iconMargin: EdgeInsets.zero,
                          text: "1",
                        ),
                        Tab(
                          text: "2",
                        ),
                        Tab(
                          text: "3",
                        )
                      ]),
                ),
              ),
              flexibleSpace: Stack(
                alignment: Alignment.center,
                children: [
                  FlutterLogo(size: 200),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("MErhabaaa"), Text("MErhaba22")],
                  )
                ],
              ),
              leading: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ],
              ),
              actions: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(Icons.search),
                    ),
                  ],
                )
              ],
            ),
            body: TabBarView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text("Treding",
                        style: Theme.of(context).textTheme.headline3),
                  ),
                  Container(
                    height: 200,
                    width: 500,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.8),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 500,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              children: [
                                Text("asd"),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Collection"))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 500,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              children: [
                                Text("asd"),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Collection"))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 500,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              children: [
                                Text("asd"),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Collection"))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text("data"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text("data"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Text("datasa"),
              Text("dassssta"),
            ])),
      ),
    );
  }
}
