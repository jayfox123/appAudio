import 'package:app_audio/features/data/get_category_data.dart';
import 'package:flutter/material.dart';
import '../customs/custom_hoveride_category.dart';

/// This is [class] for sub Categories Or Main Without [Slider] 
/// And [EndMovie]
/// This is Main Categories and all Card like To Element from Categories

class CategoryItemsMovieSliderSubCenter extends StatelessWidget {
  ApiDataCategoryMovie apiSlider = ApiDataCategoryMovie();
  CategoryItemsMovieSliderSubCenter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: apiSlider.allMovie.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CustomCardListMovie(
            name: apiSlider.allMovie[index].name,
            image: apiSlider.allMovie[index].urlImage,
          );
        },
      ),
    );
  }
}