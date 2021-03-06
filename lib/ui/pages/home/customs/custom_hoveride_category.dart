import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// This is Custom from Main Elements To Display latest Movies
/// And Request [Name] this is text on image
/// And Request [Image] this is Background for [Widget] Main Movies

class CustomCardListMovie extends StatelessWidget {
  final CategoryMovie categoryMovie;
  final Function onPressed;

  const CustomCardListMovie({Key key, this.categoryMovie, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF333333).withOpacity(0.3),
              blurRadius: 3,
            )
          ],
        ),
        child: ClipRRect(
          /// This is BorderRadius [10]

          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            width: 105,
            fit: BoxFit.fill,
            imageUrl: categoryMovie.imageUrl,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
