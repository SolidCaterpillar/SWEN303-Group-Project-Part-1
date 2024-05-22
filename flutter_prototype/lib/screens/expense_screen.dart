import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SingleChildScrollView(
        child:
            _makeMain(), // Single method to make the main content of expenses
      ),
    );
  }

  Center _makeMain() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _makeFutureButton(),
          _makeExpenseSheet(),
        ],
      ),
    );
  }
Row _makeFutureButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        onPressed: () {
          // Handle button press here
        },
        child: Text(
          'Past',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFF9A9A9A), // Button color
          fixedSize: Size(170, 40), // Button size
        ),
      ),
      ElevatedButton(
        onPressed: () {
          // Handle button press here
        },
        child: Text(
          'Future',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFF9A9A9A), // Button color
          fixedSize: Size(170, 40), // Button size
        ),
      ),
    ],
  );
}
  Container _makeExpenseSheet() {
    return Container(
      width: 340,
      height: 600,
      margin: const EdgeInsets.only(top: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 340,
            height: 600,
            decoration: ShapeDecoration(
              color: Color(0xFFE0E0E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
