
import 'package:app_audio/ui/pages/home/customs/custom_home_slidercategorytitle.dart';
import 'package:app_audio/ui/pages/home/widget/home_subslider_category.dart';
import 'package:flutter/material.dart';

class ShowMoreVideo extends StatelessWidget {
  const ShowMoreVideo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          CustomSliderCategoryMovieTitle(
              title: "Show More", onPressed: () {}),
          CategoryItemsMovieSliderSubCenter(),
        ],
      ),
    );
  }
}
