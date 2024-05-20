import 'package:flutter/material.dart';
import '../core/constants.dart';

class InsightsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insights', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
          child: Text('Insights Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
