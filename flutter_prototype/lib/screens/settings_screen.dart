import 'package:flutter/material.dart';
import '../core/constants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: AppColors.textPrimary)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
          child: Text('Settings Content',
              style: TextStyle(color: AppColors.textPrimary))),
    );
  }
}
