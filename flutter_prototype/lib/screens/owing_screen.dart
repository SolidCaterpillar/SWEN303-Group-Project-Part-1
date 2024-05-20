import 'package:flutter/material.dart';
import '../core/constants.dart';

class OwingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Owing', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
          child: Text('Owing Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
