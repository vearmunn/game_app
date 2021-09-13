import 'package:flutter/material.dart';
import 'package:game_app/components/detailGames/aboutAndReviews.dart';
import 'package:game_app/components/detailGames/details.dart';
import 'package:game_app/components/detailGames/imageAndTitle.dart';
import 'package:game_app/components/detailGames/screenshots.dart';
import 'package:game_app/main.dart';
import 'package:game_app/models/game.dart';

class DetailGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameModel args = ModalRoute.of(context).settings.arguments;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageAndTitle(
              gameModel: args,
            ),
            Details(gameModel: args,),
            Divider(),
            Screenshots(
              size: size,
              gameModel: args,
            ),
            AboutAndReviews(
              about : args.about,
              rating : args.rating
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          width: size.width - 30,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: MyApp.MainBlue,
              onPressed: () {},
              child: Text('Install')),
        ),
      ],
    );
  }
}
