import 'package:flutter/material.dart';
import '../core/constants.dart';

class AddExpenseOverlay extends StatelessWidget {
  const AddExpenseOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense',
            style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Add Expense Form',
                style: TextStyle(color: AppColors.textPrimary)),
            // Add your form fields here
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
              child: const Text('Add Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
