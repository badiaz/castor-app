import 'package:flutter/material.dart';
import 'package:castor_spotify_app/presentation/pages/search_page/widgets/search_box_widget.dart';
import 'package:castor_spotify_app/presentation/pages/search_page/widgets/musical_genre_cards.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Buscar',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 15.0),
                    const SearchBoxWidget(),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Explora tus géneros',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: size.height * 0.7,
                        child: const MusicalGenreCards())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
