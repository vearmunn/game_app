import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import '../../main.dart';

class AboutAndReviews extends StatelessWidget {
  final double rating;
  final String about;

  const AboutAndReviews({Key key, this.rating, this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 8,
          ),
          ReadMoreText(
            about,
            trimLines: 3,
            colorClickableText: MyApp.MainBlue,
            trimMode: TrimMode.Line,
            trimCollapsedText: ' Read more',
            trimExpandedText: 'Show less',
            moreStyle:
                TextStyle(fontWeight: FontWeight.w300, color: MyApp.MainBlue),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews & Ratings',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'View all',
                style: Theme.of(context).textTheme.overline,
              )
            ],
          ),
          Row(
            children: [
              Text(
                rating.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: size.height * 0.08,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RatingBar.builder(
                          itemSize: 25,
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: null),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        '256 reviews',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
