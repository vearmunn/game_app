import 'package:flutter/material.dart';
import 'package:game_app/config/static.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/widgets/gamelogo.dart';

import '../../main.dart';

class GameBanner extends StatelessWidget {
  const GameBanner({Key key, @required this.size, this.index})
      : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.85,
      height: size.height * 0.27,
      decoration: BoxDecoration(
        color: Static.PrimaryDark,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.3 / 2,
            width: size.width * 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child:
                  Image.asset(youMustTry[index].imageUrl, fit: BoxFit.cover),
            ),
          ),
          Row(
            children: [
              GameLogo(
                size: size,
                isBig: false,
                imageUrl: youMustTry[index].logoUrl,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      youMustTry[index].title,
                      style: Theme.of(context).textTheme.bodyText1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text(
                          youMustTry[index].rating.toString(),
                          style: TextStyle(color: Colors.yellow),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text(
                          youMustTry[index].genre,
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    )
                  ],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                child: Text('Install'),
                color: MyApp.MainBlue,
              ),
              SizedBox(
                width: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
