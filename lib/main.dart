import 'package:castor_spotify_app/domain/usecases/spotify_search/spotify_search_use_case.interface.dart';
import 'package:castor_spotify_app/presentation/blocs/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:castor_spotify_app/router.dart';
import 'package:castor_spotify_app/domain/di/di.dart';
import 'package:castor_spotify_app/domain/usecases/auth/auth_use_case_interface.dart';
import 'package:castor_spotify_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  DependencyInjection.initialize();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
              authUseCase: DependencyInjection.get<AuthUseCaseInterface>()),
        ),
        BlocProvider(
          create: (context) => SearchBloc(
              spotifySearchUseCase:
                  DependencyInjection.get<SpotifySearchUseCaseInterface>()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        routerConfig: router,
      ),
    );
  }
}
