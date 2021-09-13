import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/widgets/gamelogo.dart';

import '../../main.dart';

class UpcomingGames extends StatelessWidget {
  const UpcomingGames({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: size.height * 0.12 * 3 + (20 * 3),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: youMustTry.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detailGames',
                  arguments: youMustTry[index]);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              // color: Colors.red,
              height: size.height * 0.12,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GameLogo(
                    size: size,
                    isBig: true,
                    imageUrl: youMustTry[index].logoUrl,
                  ),
                  SizedBox(width: size.width * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        youMustTry[index].title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Expanded(
                        child: Text(
                          youMustTry[index].publisher,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
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
                          Text(' · ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          Icon(
                            Icons.download_sharp,
                            size: 15,
                            color: MyApp.MainBlue,
                          ),
                          Text(
                            youMustTry[index].download,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(' · ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          Text(
                            youMustTry[index].genre,
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
