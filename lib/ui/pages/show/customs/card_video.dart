
import 'package:flutter/material.dart';

class CustomCardVideo extends StatelessWidget {
  const CustomCardVideo({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 320,
      decoration: BoxDecoration(
        color: Color(0xFF33333f),
        border: Border.all(
          color: Colors.grey,
          width: 5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset.zero,
          )
        ],
      ),
      child: Image.network(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
