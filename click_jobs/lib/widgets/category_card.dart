import 'package:click_jobs/pages/category_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryCard({this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              name: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        margin: EdgeInsets.only(right: defaultMargin),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            name,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }
}
