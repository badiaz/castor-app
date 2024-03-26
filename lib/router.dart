import 'package:go_router/go_router.dart';
import 'package:castor_spotify_app/presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        name: 'splash',
        path: '/',
        builder: (context, state) => const SplashScreen()),
    GoRoute(
        name: 'home_screen',
        path: '/home_screen',
        builder: (context, state) => const HomeScreen()),
    GoRoute(
        name: 'login_screen',
        path: '/login_screen',
        builder: (context, state) => const LoginScreen()),
  ],
);
