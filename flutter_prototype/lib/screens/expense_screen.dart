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
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 300,
        height: 60,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 300,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10.00,
              top: 5,
              child: SizedBox(
                width: 126.74,
                height: 30,
                child: Text(
                  'Statement',
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10.00,
              top: 30,
              child: SizedBox(
                width: 126.74,
                height: 30,
                child: Text(
                  'Date',
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 180.00,
              top: 5,
              child: SizedBox(
                width: 102.81,
                height: 30,
                child: Text(
                  'Amount',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Padding _makeExpenseCard() {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       width: 340,
  //       height: 60,
  //       decoration: ShapeDecoration(
  //         color: Color.fromARGB(255, 185, 92, 92),
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //       ),
  //       child: _makeInsideExpenseCard(),
  //     ),
  //   );
  // }

  Container _makeExpenseSection() {
    return Container(
      width: 340,
      decoration: ShapeDecoration(
        color: Color(0xFFBABABA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
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
        color: Color(0xFFE1E1E1),
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
          Padding(
            padding: EdgeInsets.all(10),
            child: _makeExpenseSection(),
          )
        ],
      ),
    );
  }
}
