import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const TKDApp());
}

class TKDApp extends StatelessWidget {
  const TKDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TKD Student App',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
