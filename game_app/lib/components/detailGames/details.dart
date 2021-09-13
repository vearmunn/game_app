import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

import '../../main.dart';

class Details extends StatelessWidget {
  final GameModel gameModel;

  const Details({Key key, this.gameModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(12, size.height * 0.05, 12, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomColumn(
            text: gameModel.rating.toString(),
            icon: Icons.star_rounded,
            color: Colors.yellow,
          ),
          CustomColumn(
            text: gameModel.download,
            icon: Icons.download_sharp,
            color: MyApp.MainBlue,
          ),
          CustomColumn(
            text: gameModel.size,
            icon: Icons.storage,
            color: Colors.grey,
          ),
          CustomColumn(
              text: gameModel.genre,
              icon: Icons.king_bed,
              color: Colors.lightGreenAccent),
        ],
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({Key key, this.text, this.icon, this.color})
      : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: TextStyle(
              color: icon == Icons.star ? Colors.yellow : Colors.grey),
        ),
      ],
    );
  }
}
