import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:app_audio/ui/theme/all_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


/// This is Card List Bottom Slider 
/// by Colors [Red]
/// And Request [Name] And [Image] And [onPressed]

class CustomCardCategoryHome extends StatelessWidget {
  final CategoryMovie categoryMovie;
  final Function onPressed;

  CustomCardCategoryHome({Key key, this.categoryMovie, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        width: 130,
        height: 80,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                width: 130,
                height: 80,
                fit: BoxFit.fill,
                imageUrl: categoryMovie.imageUrl,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Container(
              width: 130,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.red.withOpacity(0.5), blurRadius: 3.5)
                ],
                borderRadius: BorderRadius.circular(15),
                // color: Colors.red.withOpacity(0.5),
              ),
            ),
            Text(
              categoryMovie.name,
              style: centerCategoriesListStyle
            ),
          ],
        ),
      ),
    );
  }
}