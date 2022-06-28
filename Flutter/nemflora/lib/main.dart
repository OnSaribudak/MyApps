import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
  late TooltipBehavior _tooltip;

  @override
  List<Color> color = [];

  @override
  Widget build(BuildContext context) {
    final db = FirebaseDatabase.instanceFor(app: widget.appp);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<DatabaseEvent>(
          stream: db.ref("NemFlora").onValue,
          builder: (context, snapshot) {
            DataSnapshot datas =
                snapshot.data!.snapshot.child("Kitler/1/Datas");
            DataSnapshot datasRealTime =
                snapshot.data!.snapshot.child("Kitler/1/RealTimeData");
            int tempatureValue =
                datasRealTime.child("Tempature/").value.hashCode;
            int humidityValue = datasRealTime.child("Humidity/").value.hashCode;
            int soilHumidityValue =
                datasRealTime.child("SoilHumidity/").value.hashCode;

            print(tempatureValue);
            print(humidityValue);
            print(soilHumidityValue);
            return Scaffold(
              backgroundColor: Colors.pink.shade50,
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.green,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: '',
                  ),
                ],
                unselectedItemColor: Colors.green,
                elevation: 15,
              ),
              appBar: AppBar(
                leading: Icon(
                  Icons.menu,
                  color: Colors.green,
                ),
                title: Text(
                  "NemFlora",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.green.shade700),
                ),
                backgroundColor: Colors.white,
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.green,
                  ),
                ],
              ),
              body: ListView(
                children: [
                  Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Colors.red.shade300,
                                      Colors.blue.shade300
                                    ])),
                                height: MediaQuery.of(context).size.height * 0.01),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Expanded(
                                  child: Card(
                                      shadowColor: Colors.amber,
                                      elevation: 20,
                                      child: tempatureCard(
                                          tempatureValue.ceilToDouble()))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Expanded(
                                child: Card(
                                  shadowColor: Colors.amber,
                                  elevation: 20,
                                  child: kit1ValueGraph("Tempature Graph",
                                      Colors.orange.shade700, datas, "/Temperature"),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Card(
                                  shadowColor: Colors.blue,
                                  elevation: 20,
                                  child: humidityCard(humidityValue.ceilToDouble())),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(30),
                                child: Card(
                                    shadowColor: Colors.blue,
                                    elevation: 20,
                                    child: kit1ValueGraph("Humidity Graph",
                                        Colors.blue.shade700, datas, "/Humidity"))),

                                         Padding(
                              padding: const EdgeInsets.all(30),
                              child: Card(
                                  shadowColor: Colors.brown,
                                  elevation: 20,
                                  child: soilHumidityCard(
                                      soilHumidityValue.ceilToDouble())),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Card(
                                shadowColor: Colors.brown,
                                elevation: 20,
                                child: kit1ValueGraph("Soil Humidity Graph",
                                    Colors.brown.shade700, datas, "/SoilHumidity"),
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Colors.red.shade300,
                                      Colors.blue.shade300
                                    ])),
                                height: MediaQuery.of(context).size.height * 0.01),
                 
                
                ],
              ),
            );
          }),
    );
  }

  Widget tempatureCard(double value) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      title: GaugeTitle(
          text: "Tempature",
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.orange.shade700)),
      axes: <RadialAxis>[
        RadialAxis(pointers: <GaugePointer>[
          RangePointer(
              value: value,
              width: 0.1,
              color: Colors.orange.shade700,
              sizeUnit: GaugeSizeUnit.factor)
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 130, 0, 0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.device_thermostat_outlined,
                          color: Colors.orange.shade700,
                          size: 50,
                        ),
                        Container(
                          child: Text(value.toString() + "°C",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.orange.shade700)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              angle: 270,
              positionFactor: 0.1)
        ], ranges: <GaugeRange>[])
      ],
    );
  }

  Widget humidityCard(double value) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      title: GaugeTitle(
          text: "Humidity",
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blue.shade700)),
      axes: <RadialAxis>[
        RadialAxis(pointers: <GaugePointer>[
          RangePointer(
              value: value,
              width: 0.1,
              color: Colors.blue.shade700,
              sizeUnit: GaugeSizeUnit.factor)
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 130, 0, 0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.invert_colors,
                          color: Colors.blue.shade700,
                          size: 50,
                        ),
                        Container(
                          child: Text("%" + value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.blue.shade700)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              angle: 270,
              positionFactor: 0.1)
        ], ranges: <GaugeRange>[])
      ],
    );
  }

  Widget soilHumidityCard(double value) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      title: GaugeTitle(
          text: "Soil Humidity",
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.brown.shade700)),
      axes: <RadialAxis>[
        RadialAxis(pointers: <GaugePointer>[
          RangePointer(
              value: value,
              width: 0.1,
              color: Colors.brown.shade700,
              sizeUnit: GaugeSizeUnit.factor)
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 130, 0, 0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.local_florist,
                          color: Colors.brown.shade700,
                          size: 50,
                        ),
                        Container(
                          child: Text("%" + value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.brown.shade700)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              angle: 270,
              positionFactor: 0.1)
        ], ranges: <GaugeRange>[])
      ],
    );
  }

  SfCartesianChart kit1ValueGraph(
      String name, Color color, DataSnapshot data, String dataName, ) {
    return SfCartesianChart(
      palette: [color],
        backgroundColor: Colors.green.shade50,
        // Initialize category axis
        primaryXAxis: CategoryAxis(
          title: AxisTitle( alignment: ChartAlignment.center,
             text:name , textStyle: 
          TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: color)),
          borderColor: color
        ),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
          width: 5,     // Bind data source
              dataSource: <SalesData>[
                SalesData('M', arithmeticMeanTemp(data, 2, dataName)),
                SalesData('Tu', arithmeticMeanTemp(data, 4, dataName)),
                SalesData('W', arithmeticMeanTemp(data, 6, dataName)),
                SalesData('Th', arithmeticMeanTemp(data, 8, dataName)),
                SalesData('F', arithmeticMeanTemp(data, 10, dataName)),
                SalesData('Sa', arithmeticMeanTemp(data, 12, dataName)),
                SalesData('Su', arithmeticMeanTemp(data, 14, dataName)),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales),

        ]);
  }

  int arithmeticMeanTemp(DataSnapshot data, int day, String dataName) {
    var i = 0;
    List<int> templ = [];
    int tempValue;

    for (var i = 1; i <= day; i++) {
      int temp = data.child(i.toString() + dataName).value.hashCode;
      templ.add(temp);
      print(temp);
    }
    tempValue = ((templ.first + templ.last) / 2).toInt();
    print(tempValue);
    return tempValue;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final int sales;
}
