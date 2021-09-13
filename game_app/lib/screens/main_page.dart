import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_app/components/mainPage/categorySection.dart';
import 'package:game_app/components/mainPage/gameBanner.dart';
import 'package:game_app/widgets/searchBar.dart';
import 'package:game_app/components/mainPage/upcomingGames.dart';

import 'package:game_app/models/game.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.11),
        child: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Firman Handi P',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: SearchBar(
                size: size,
                hint: 'Search for games...',
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Category(size: size),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Text(
                'Games you must try',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.27,
              child: ListView.builder(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.04 - 10),
                scrollDirection: Axis.horizontal,
                itemCount: youMustTry.length,
                itemBuilder: (BuildContext context, int index) {
                  return GameBanner(
                    size: size,
                    index: index,
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Games',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context).textTheme.overline,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            UpcomingGames(size: size),
          ],
        ),
      ),
    );
  }
}
