import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';
import 'package:marketdo_admin/widgets/text_widget.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart' as fchart;

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  void initState() {
    super.initState();

    getData();
    getData2();
    getData3();
    getData5();
    getData6();
    getData7();
    getData8();
  }

  late int total1 = 0;

  getData() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('category', isEqualTo: 'Snacks');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total1 = querySnapshot.size;
        }
      });
    }
  }

  late int total2 = 0;

  getData2() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('category', isEqualTo: 'Fruits');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total2 = querySnapshot.size;
        }
      });
    }
  }

  late int total3 = 0;

  getData3() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Products')
        .where('category', isEqualTo: 'Vegetables');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total3 = querySnapshot.size;
        }
      });
    }
  }

  late int total4 = 0;

  getData4() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Products')
        .where('category', isEqualTo: 'Meat');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total4 = querySnapshot.size;
        }
      });
    }
  }

  late int total5 = 0;

  getData5() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('category', isEqualTo: 'Snacks');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total5 = querySnapshot.size;
        }
      });
    }
  }

  late int total6 = 0;

  getData6() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('category', isEqualTo: 'Fruits');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total6 = querySnapshot.size;
        }
      });
    }
  }

  late int total7 = 0;

  getData7() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Products')
        .where('category', isEqualTo: 'Vegetables');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total7 = querySnapshot.size;
        }
      });
    }
  }

  late int total8 = 0;

  getData8() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Products')
        .where('category', isEqualTo: 'Meat');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total8 = querySnapshot.size;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Snacks": total1.toDouble(),
      "Fruits": total2.toDouble(),
      "Vegetables": total3.toDouble(),
      "Meat": total4.toDouble(),
    };

    Map<String, double> dataMap1 = {
      "Snacks": total5.toDouble(),
      "Fruits": total6.toDouble(),
      "Vegetables": total7.toDouble(),
      "Meat": total8.toDouble(),
    };
    final List<ChartData> chartData = [
      ChartData(01, 35),
      ChartData(02, 25),
      ChartData(03, 12),
      ChartData(04, 35),
      ChartData(05, 58),
      ChartData(06, 12),
      ChartData(07, 125),
      ChartData(08, 76),
      ChartData(09, 1),
      ChartData(10, 56),
      ChartData(11, 12),
      ChartData(12, 65),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText(label: '       Dashboard', fontSize: 32, color: primary),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(
                          label: 'Products Posted',
                          fontSize: 24,
                          color: primary),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: PieChart(
                            dataMap: dataMap,
                            animationDuration:
                                const Duration(milliseconds: 800),
                            chartLegendSpacing: 32,
                            chartRadius:
                                MediaQuery.of(context).size.width / 3.2,
                            colorList: const [
                              Colors.blue,
                              Colors.red,
                              Colors.green,
                              Colors.amber
                            ],
                            initialAngleInDegree: 0,
                            chartType: ChartType.disc,
                            ringStrokeWidth: 32,
                            centerText: "Products",
                            legendOptions: const LegendOptions(
                              legendPosition: LegendPosition.right,
                              showLegendsInRow: false,
                              showLegends: true,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 1,
                            ),
                            // gradientList: ---To add gradient colors---
                            // emptyColorGradient: ---Empty Color gradient---
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(
                          label: 'Products Purchased',
                          fontSize: 24,
                          color: primary),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: PieChart(
                            dataMap: dataMap1,
                            animationDuration:
                                const Duration(milliseconds: 800),
                            chartLegendSpacing: 32,
                            chartRadius:
                                MediaQuery.of(context).size.width / 3.2,
                            colorList: const [
                              Colors.blue,
                              Colors.red,
                              Colors.green,
                              Colors.amber
                            ],
                            initialAngleInDegree: 0,
                            chartType: ChartType.disc,
                            ringStrokeWidth: 32,
                            centerText: "Purchased",
                            legendOptions: const LegendOptions(
                              legendPosition: LegendPosition.right,
                              showLegendsInRow: false,
                              showLegends: true,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 1,
                            ),
                            // gradientList: ---To add gradient colors---
                            // emptyColorGradient: ---Empty Color gradient---
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        label: 'Product Sales', fontSize: 32, color: primary),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 300,
                        width: 1000,
                        decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: fchart.SfCartesianChart(
                            series: <fchart.ChartSeries>[
                              // Renders spline chart
                              fchart.SplineSeries<ChartData, int>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y)
                            ])),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
