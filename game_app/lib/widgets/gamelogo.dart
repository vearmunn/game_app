import 'package:flutter/material.dart';

class GameLogo extends StatelessWidget {
  const GameLogo({Key key, @required this.size, this.isBig, this.imageUrl})
      : super(key: key);

  final Size size;
  final bool isBig;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: isBig ? 0 : 15, vertical: isBig ? 0 : 15),
      width: isBig ? size.width * 0.2 : size.width * 0.12,
      height: isBig ? size.width * 0.2 : size.width * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
