import 'package:flutter/material.dart';
import 'package:flutter_prototype/widgets/pie_chart.dart';
import '../core/constants.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insights',
            style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        children: [
          Container(
            height: 300.0, // Set a fixed height for the PieChart
            child: MyPieChart(),
          ),
          const Center(
            child: Text('Insights Content',
                style: TextStyle(color: AppColors.textPrimary)),
          ),
        ],
      ),
    );
  }
}

