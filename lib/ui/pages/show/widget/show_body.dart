import 'package:app_audio/ui/pages/show/customs/card_video.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  const ShowAllWidget({
    Key key,
    @required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 35,
        crossAxisSpacing: 0,
        children: images.map((e) {
          return CustomCardVideo(image: e);
        }).toList(),
      ),
    );
  }
}
