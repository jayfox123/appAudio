import 'package:flutter/material.dart';

/// This is Diviret list Make for [Name] And [Button]
/// Request [Name] And [Function] so IF Click On Button Push To Page [Movie]

class CustomSliderCategoryMovieTitle extends StatelessWidget {
  String title;
  Function onPressed;

  CustomSliderCategoryMovieTitle({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            /// This is [Text] the text like [Title]
            /// Category Down Text list from [Movie]
            
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            /// This is Button Push To Page Show More
            /// About is [Movie]
            
            InkWell(
              onTap: onPressed,
              child: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),

        /// This is Margin Between This [Icon] And [AnyWidget] down Icon
        
        SizedBox(height: 20),

      ],
    );
  }
}