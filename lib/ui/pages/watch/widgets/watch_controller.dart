import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ControllerWithVideo extends StatelessWidget {
  final VideoPlayerController controller;
  ControllerWithVideo({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_downward,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            print("This is Button Download");
          },
        ),

        /// this is Home Buttons
        /// Button [Play] And [Pause]
        
        GestureDetector(
          onTap: (){
            controller.value.isPlaying ?
              controller.pause()
            : controller.play();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 13,
                ),
              ],
            ),
            child: controller.value.isPlaying ?
              iconPause
            : iconPlay
          ),
        ),

        /// End Button
        

        ///  This is Button Share Data [Lisk]
        
        IconButton(
          onPressed: () {
            print("Share Button");
          },
          icon: Icon(
            Icons.share,
            color: Colors.black,
            size: 30,
          ),
        ),
        /// End Icon [Share]

      ],
    );
  }


  final iconPlay = Icon(
              Icons.play_arrow,
              color: Colors.red.shade600,
              size: 50,
            );
  final iconPause = Icon(
              Icons.pause,
              color: Colors.red.shade600,
              size: 50,
            );
}
