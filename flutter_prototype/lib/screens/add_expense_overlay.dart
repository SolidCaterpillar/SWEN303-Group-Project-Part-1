import 'package:flutter/material.dart';
import '../core/constants.dart';

class AddExpenseOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Add Expense', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Add Expense Form',
                style: TextStyle(color: AppColors.textPrimary)),
            // Add your form fields here
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Add Expense'),
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
