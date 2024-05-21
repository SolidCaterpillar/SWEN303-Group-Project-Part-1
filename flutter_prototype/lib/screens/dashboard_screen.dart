import 'package:flutter/material.dart';
import '../core/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard',
            style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: const Center(
          child: Text('Dashboard Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
