import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MusicalGenreCards extends StatelessWidget {
  const MusicalGenreCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 100,
          crossAxisCount: 2, // Número de columnas en la cuadrícula
          crossAxisSpacing: 5.0, // Espacio entre las columnas
          mainAxisSpacing: 5.0, // Espacio entre las filas
        ),
        itemCount: 8,
        itemBuilder: (context, index) => const GenreCard());
  }
}

class GenreCard extends StatelessWidget {
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: HexColor('#006450'),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Podcast',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            Transform.translate(
              offset: const Offset(24, 20),
              child: Transform.rotate(
                  angle: 0.5,
                  child: const Image(
                    image: NetworkImage(
                        'https://i.scdn.co/image/ab6765630000ba8aa3ccdbf467a2fa4ed8f18a6e'),
                    width: 70,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
