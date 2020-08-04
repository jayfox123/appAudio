import 'package:app_audio/features/data/get_category_data.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';


/// This is Slider Image Home Page This is Code Slider Not Custom [Card]
/// [Future] Requset [StreamLogic] for BackEnd

class SliderLatestMovie extends StatelessWidget {
  ApiDataCategoryMovie apiSlider = ApiDataCategoryMovie();
  SliderLatestMovie({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: apiSlider.allMovie.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: apiSlider.allMovie[index].urlImage,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  apiSlider.allMovie[index].name,
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(height: 180, aspectRatio: 10),
    );
  }
}