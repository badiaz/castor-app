import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:castor_spotify_app/presentation/pages/start_screen/widgets/header_widget.dart';
import 'package:castor_spotify_app/presentation/pages/start_screen/widgets/recent_widget.dart';
import 'package:castor_spotify_app/presentation/pages/start_screen/widgets/recommended_widgets.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 5.0),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: backgroundDecoration(),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                SizedBox(
                  height: size.height * 0.2,
                  child: const RecentWidget(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const _SectionWidget('Recommended for today'),
                const _SectionWidget('Recently played'),
                const _SectionWidget('Also Listen to')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration backgroundDecoration() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [HexColor('#1a1a1a'), Colors.black, Colors.black]));
}

class _SectionWidget extends StatelessWidget {
  final String sectionTitle;
  const _SectionWidget(this.sectionTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(sectionTitle,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        const RecommendedWidget()
      ],
    );
  }
}
