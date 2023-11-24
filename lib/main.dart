import 'package:flutter/material.dart';
import 'package:kafe_app/config/theme/app_theme.dart';
import 'package:kafe_app/presentation/screens/welcome/wellcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData(),
      title: 'Material App',
      home: const WellcomeScreen()
    );
  }
}