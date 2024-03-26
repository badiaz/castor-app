import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:castor_spotify_app/utils/color_pallete.dart';
import 'package:castor_spotify_app/presentation/blocs/auth/auth_bloc.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({super.key});

  @override
  State<LoginButtonWidget> createState() => LoginButtonWidgetState();
}

class LoginButtonWidgetState extends State<LoginButtonWidget> {
  late AuthBloc authBloc;
  bool _isPressed = false;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is TokenObtained) {
          context.go('/home_screen');
        }
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isPressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
          authBloc.add(FetchAuthCodeEvent());
        },
        onTapCancel: () {
          setState(() {
            _isPressed = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: size.width * 0.7,
          height: size.height * 0.08,
          decoration: BoxDecoration(
              color: _isPressed
                  ? ColorPallet.greenColor.withOpacity(0.8)
                  : ColorPallet.greenColor,
              borderRadius: const BorderRadius.all(Radius.circular(40))),
          child: const Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Conectar con Spotify',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Icon(Icons.arrow_circle_right_outlined),
              )
            ],
          )),
        ),
      ),
    );
  }
}
