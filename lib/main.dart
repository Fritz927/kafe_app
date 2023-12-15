import 'package:flutter/material.dart';
import 'package:kafe_app/config/theme/app_theme.dart';
import 'package:kafe_app/router/routes.dart';
import 'package:kafe_app/services/auth_service.dart';
import 'package:kafe_app/services/notifications_service.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthService()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: NotificationService.messengerKey,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData(),
      title: 'Material App',
    );
  }
}
