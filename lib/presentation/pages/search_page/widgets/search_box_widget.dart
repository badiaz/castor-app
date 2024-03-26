import 'package:castor_spotify_app/presentation/delegates/search_delegate.dart';
import 'package:flutter/material.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSearch(context: context, delegate: MySearchDelegate()),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Image.asset(
              'assets/search.png',
              width: 25,
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text(
              '¿Qué quieres escuchar?',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
