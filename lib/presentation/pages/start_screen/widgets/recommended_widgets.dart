import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: 190,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const RecommendedCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 12,
            );
          },
        ));
  }
}

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            width: 130,
            height: 130,
            image: NetworkImage(
                'https://i.scdn.co/image/ab67616d0000b27398bf0a6f6828a3ee131d5a02')),
        SizedBox(
          height: 8,
        ),
        Text('Ricardo Arjona', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Historia de una taxi',
            style: TextStyle(fontSize: 12, color: Colors.grey))
      ],
    );
  }
}
