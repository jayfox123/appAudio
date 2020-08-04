import 'package:app_audio/features/data/get_category_data.dart';
import 'package:flutter/material.dart';
import '../customs/custom_home_cardcategories.dart';

/// This is List Categories Bottom Slider Duraract
/// Custom for [Image] And [Name] And [ONPressed]

class ListCategories extends StatelessWidget {
  ApiDataCategoryMovie apiSlider = ApiDataCategoryMovie();
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: apiSlider.allMovie.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCardCategoryHome(
            name: apiSlider.allMovie[index].name,
            imageUrl: apiSlider.allMovie[index].urlImage,
            onPressed: () {},
          );
        },
      ),
    );
  }
}