import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyPieChart extends StatelessWidget {

  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PieChart(
          PieChartData(
            centerSpaceRadius: 50,
            sections: _getSections(),
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
          ),
        ),
        Text(
           "Total Expense",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> _getSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 40,
        title: '40%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 30,
        title: '30%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: '20%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 10,
        title: '10%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ];
  }
}

