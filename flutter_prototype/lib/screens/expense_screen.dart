import 'package:flutter/material.dart';
import '../core/constants.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses',
            style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: const Center(
          child: Text('Expenses Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
