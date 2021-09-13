import 'package:flutter/material.dart';
import 'package:game_app/models/category.dart';

import '../../main.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: MyApp.AccentDark,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.035, vertical: 10),
            child: Column(
              children: [
                Icon(
                    index == 4
                        ? Icons.more_horiz_rounded
                        : categoryList[index].icons,
                    size: 30,
                    color:
                        index == 4 ? Colors.white : categoryList[index].colors),
                SizedBox(
                  height: 10,
                ),
                Text(
                  index == 4 ? 'View all' : categoryList[index].genres,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
