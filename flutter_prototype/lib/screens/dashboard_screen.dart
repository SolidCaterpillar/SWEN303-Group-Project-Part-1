import 'package:flutter/material.dart';
import '../core/constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Dashboard', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
          child: Text('Dashboard Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
