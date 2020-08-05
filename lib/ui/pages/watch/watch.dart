import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:app_audio/ui/pages/watch/widgets/info_video.dart';
import 'package:app_audio/ui/pages/watch/widgets/watch_appbar.dart';
import 'package:app_audio/ui/pages/watch/widgets/watch_controller.dart';
import 'package:app_audio/ui/pages/watch/widgets/watch_hero_video.dart';
import 'package:app_audio/ui/pages/watch/widgets/watch_show_more.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WatchPage extends StatefulWidget {
  final CategoryMovie categoryMovie;

  WatchPage({
    Key key,
    this.categoryMovie,
  }) : super(key: key);

  @override
  _WatchPageState createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.categoryMovie.videoUrl)
      ..initialize().then((value) {});
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WatchAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /// This is Class Show a Video
            /// arge Lisk Video

            CenterVideoWatch(
              categoryMovie: widget.categoryMovie,
              videoController: _controller,
            ),

            SizedBox(height: 20),

            /// Buttons [Controllers] That Videos
            /// 3 Buttons [Play] And [Share] And [Download]

            ControllerWithVideo( controller: _controller, ),

            SizedBox(height: 20),

            ///  This is Detals video [Description] of Video
            /// Data agre [Title] And [Type] Or [Kind] And [Year] And [Contry] And [Lenght] And [Descrption]
            
            DetailVideoAllData(categoryMovie: widget.categoryMovie, length: _controller.value.duration ),

            // SizedBox(height: 5),

            ShowMoreVideo(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
