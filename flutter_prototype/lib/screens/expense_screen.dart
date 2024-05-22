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
      body: SingleChildScrollView( 
        child: _makeExpenseSheet(),
      ),
    );
  }

  Container _makeExpenseSheet() {
    return Container(
      width: 340,
      height: 160,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 340,
                  height: 160,
                  decoration: ShapeDecoration(
                    color: Color(0xFFB9B9B9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 15.95,
                top: 0,
                child: SizedBox(
                  width: 160.53,
                  height: 20,
                  child: Text(
                    'This Week',
                    style: TextStyle(
                      color: Color(0xFF343434),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 9.97,
                top: 20,
                child: Container(
                  width: 319.06,
                  height: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 319.06,
                        height: 60,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 319.06,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
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
                            SizedBox(
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
                            SizedBox(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 9.97,
                top: 90,
                child: Container(
                  width: 319.06,
                  height: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 319.06,
                        height: 60,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 319.06,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
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
                            SizedBox(
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
                            SizedBox(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
