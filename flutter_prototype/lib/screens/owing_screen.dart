import 'package:flutter/material.dart';
import '../core/constants.dart';

class OwingScreen extends StatelessWidget {
  const OwingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Owing', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: const Center(
          child: Text('Owing Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
