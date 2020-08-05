import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CenterVideoWatch extends StatelessWidget {
  final VideoPlayerController videoController;
  final CategoryMovie categoryMovie;

  CenterVideoWatch({
    Key key,
    @required this.videoController,
    this.categoryMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
          ),
        ],
      ),
      margin: EdgeInsets.all(0),
      width: double.infinity,
      height: 240,
      child: videoController.value.initialized
          ? AspectRatio(
              aspectRatio: videoController.value.aspectRatio,
              child: VideoPlayer(videoController))
          : Image.network(
              categoryMovie.imageUrl,
              fit: BoxFit.fill,
            ),
    );
  }
}

// Image.network(
//         image,
//         fit: BoxFit.fill,
//       ),
