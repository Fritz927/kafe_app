import 'package:go_router/go_router.dart';
import 'package:kafe_app/presentation/screens/home_screen.dart';
import 'package:kafe_app/presentation/screens/login/initial_screen.dart';
import 'package:kafe_app/presentation/screens/login/login_screen.dart';
import 'package:kafe_app/presentation/screens/login/register_screen.dart';


  final router = GoRouter(
  initialLocation: '/',
  routes: [   
    GoRoute(
      name: 'initial', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) =>const InitialScreen(),
    ),
     GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/home',
      builder: (context, state) =>const HomeScreen(),
    ),
     GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) =>const LoginScreen(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) =>const RegisterScreen(),
    ),
  ],
);