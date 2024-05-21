import 'package:flutter/material.dart';
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
      body: const Center(
          child: Text('Insights Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
