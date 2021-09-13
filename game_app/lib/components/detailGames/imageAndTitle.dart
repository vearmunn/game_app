import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/widgets/gamelogo.dart';

class ImageAndTitle extends StatelessWidget {
  final GameModel gameModel;

  ImageAndTitle({Key key, this.gameModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.3,
              child: Image.asset(gameModel.imageUrl, fit: BoxFit.cover),
            ),
            Positioned(
              bottom: -size.height * 0.05,
              child: GameLogo(
                size: size,
                imageUrl: gameModel.logoUrl,
                isBig: true,
              ),
            ),
            Positioned(
              top: size.width * 0.05,
              left: size.width * 0.05,
              child: SafeArea(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white38,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, size.height * 0.065, 0, 0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                gameModel.title,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                gameModel.publisher,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
