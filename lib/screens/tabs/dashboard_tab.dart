import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';
import 'package:marketdo_admin/widgets/text_widget.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardTab extends StatelessWidget {
  DashboardTab({super.key});

  Map<String, double> dataMap = {
    "Snacks": 2,
    "Fruits": 3,
    "Vegetables": 5,
    "Meat": 2,
  };

  Map<String, double> dataMap1 = {
    "Snacks": 2,
    "Fruits": 3,
    "Vegetables": 5,
    "Meat": 2,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(label: '       Dashboard', fontSize: 32, color: primary),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        label: 'Products Posted', fontSize: 24, color: primary),
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
                          animationDuration: const Duration(milliseconds: 800),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width / 3.2,
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
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
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
                          animationDuration: const Duration(milliseconds: 800),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width / 3.2,
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
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
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
          ],
        ),
      ),
    );
  }
}
