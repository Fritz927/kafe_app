import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kafe_app/services/auth_service.dart';
import 'package:provider/provider.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: Center(
          child: FutureBuilder(
              future: authService.readToken(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (!snapshot.hasData) {
                  return const Text('');
                }
                if(snapshot.data == '')
                {
                Future.microtask(() => context.go('/initial'));
                
                }else {
                  Future.microtask(() => context.go('/home'));
                
                }
                return Container();
                
              }
              )
              ),
    );
  }
}
