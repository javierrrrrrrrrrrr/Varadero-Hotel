import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RaitingBar extends StatelessWidget {
  const RaitingBar({
    Key? key,
    required this.tamano,
    required this.separacion,
  }) : super(key: key);

  final double tamano;
  final double separacion;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: tamano,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: separacion),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
