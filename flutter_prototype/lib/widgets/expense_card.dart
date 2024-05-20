import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final String description;
  final double amount;

  ExpenseCard({required this.description, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(description),
        subtitle: Text('\$${amount.toStringAsFixed(2)}'),
      ),
    );
  }
}
