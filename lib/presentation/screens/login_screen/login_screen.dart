import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:castor_spotify_app/presentation/screens/login_screen/widgets/login_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Opacity(
            opacity: animation.value,
            child: child,
          );
        },
        child: FutureBuilder<void>(
          future: precacheImage(
            const AssetImage('assets/login_background.png'),
            context,
          ),
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: HexColor('#1db954'),
                ),
              );
            } else {
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/login_background.png'),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Spotify_Logo_RGB_Green.png',
                          width: size.width * 0.7),
                      const Text(
                        'Disfruta escuchar musica',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      const LoginButtonWidget()
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
