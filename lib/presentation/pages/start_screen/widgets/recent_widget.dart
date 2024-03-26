import 'package:flutter/material.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 50,
            crossAxisCount: 2, // Número de columnas en la cuadrícula
            crossAxisSpacing: 8.0, // Espacio entre las columnas
            mainAxisSpacing: 8.0, // Espacio entre las filas
          ),
          itemCount: 4,
          itemBuilder: (context, index) => buildCard('assets/liked.jpeg', '')),
    );
  }
}

Container buildCard(String image, String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.grey[800],
    ),
    clipBehavior: Clip.antiAlias,
    child: SizedBox(
      width: 170,
      height: 50,
      child: Row(
        children: [
          Image(
            width: 50,
            height: 50,
            image: AssetImage(image),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Liked Songs')
        ],
      ),
    ),
  );
}
