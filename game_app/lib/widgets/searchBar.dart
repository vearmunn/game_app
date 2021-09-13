import 'package:flutter/material.dart';

import '../main.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required this.size, @required this.hint
  }) : super(key: key);

  final Size size;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20, right: 5),
      alignment: Alignment.center,
      width: double.infinity,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: MyApp.AccentDark,
      ),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
            hintText: hint,
            border: InputBorder.none),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
