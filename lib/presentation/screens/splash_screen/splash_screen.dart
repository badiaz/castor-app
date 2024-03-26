import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    validateToken();
    super.initState();
  }

  Future<void> validateToken() async {
    var token = await secureStorage.read(key: 'access_token');
    Future.delayed(const Duration(milliseconds: 2000), () async {
      if (token != null) {
        context.go('/login_screen');
        // context.go('/home_screen');
      } else {
        context.go('/login_screen');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1a1a1a'),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Spotify_Logo_RGB_Green.png'))),
        ),
      ),
    );
  }
}
