import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtom extends StatelessWidget {
  const LikeButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 251, 251, 0.79),
          borderRadius: BorderRadius.circular(80),
        ),
        child: const Center(
            child: Padding(
                padding: EdgeInsets.only(
                  left: 2,
                  top: 1,
                ),
                child: LikeButton())));
  }
}
