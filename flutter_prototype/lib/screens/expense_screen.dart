import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../core/constants.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            fixedSize: Size(170, 40), // Button size
          ),
        ),
      ],
    );
  }

  Padding _makeExpenseCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 340,
        height: 60,
        decoration: ShapeDecoration(
          color: Color.fromARGB(255, 185, 92, 92),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }

  Container _makeExpenseSection() {
    return Container(
      width: 340,
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 112, 48, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Column(
        children: [
          Text(
            'Today',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          _makeExpenseCard(),
          _makeExpenseCard(),
        ],
      ),
    );
  }

  Container _makeExpenseSheet() {
    return Container(
      width: 340,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 134, 128, 128),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _makeExpenseSection(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _makeExpenseSection(),
          ),
        ],
      ),
    );
  }
}
