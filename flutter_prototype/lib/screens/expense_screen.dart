import 'package:flutter/material.dart';
import '../core/constants.dart';

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
          child: Text('Expenses Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
