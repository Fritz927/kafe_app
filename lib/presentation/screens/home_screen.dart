import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kafe_app/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kafe App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Hola Mundo'),
          ),
          FloatingActionButton(
              child: const Icon(Icons.logout),
              onPressed: () {
                authService.logout();
                context.go('/initial');
              })
        ],
      ),
    );
  }
}
