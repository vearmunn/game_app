import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class Screenshots extends StatelessWidget {
  const Screenshots({Key key, @required this.size, this.gameModel})
      : super(key: key);

  final Size size;
  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: size.height * 0.2,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: gameModel.screenshotsUrl.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                gameModel.screenshotsUrl[index],
                fit: BoxFit.cover,
              ),
            ),
            // height: size.height * 0.02,
          );
        },
      ),
    );
  }
}
