import 'package:flutter/material.dart';
import 'package:kafe_app/config/theme/app_theme.dart';
import 'package:kafe_app/router/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData(),
      title: 'Material App',
      
    );
  }
}