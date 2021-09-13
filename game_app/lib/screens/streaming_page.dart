import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/widgets/gamelogo.dart';
import 'package:game_app/widgets/searchBar.dart';

class StreamingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.04, vertical: w * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Streaming',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SearchBar(size: size, hint: 'Search live streams games...')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: w * 0.04),
              child: Text(
                'Popular Games',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: h * 0.02),
              // color: Colors.blue,
              width: double.infinity,
              height: w * 0.4,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: w * 0.02,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: logoOnlyUrl.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.02,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GameLogo(
                          size: size,
                          imageUrl: logoOnlyUrl[index].logoUrl,
                          isBig: true,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          // color: Colors.red,
                          width: w * 0.22,
                          child: Text(
                            logoOnlyUrl[index].title,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: w * 0.04, vertical: w * 0.02),
              width: double.infinity,
              height: 100,
              // color: Colors.red,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/banner.png',
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * 0.04, vertical: w * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Live now',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context).textTheme.overline,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
