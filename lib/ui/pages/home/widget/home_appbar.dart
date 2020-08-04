import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


/// This is [class] like to AppBar to Home Page
/// build from 3 elements [1] Image [Menu]  And [2] Image [Hero] as Name of Application And [3] Icon [Search] 

class HomeAppBar extends StatelessWidget {
  HomeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        /// this is Image [Menu]
        GestureDetector(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: CachedNetworkImage(
            width: 25,
            height: 25,
            imageUrl:
                "https://cdn4.iconfinder.com/data/icons/simplicity-1/48/menu-512.png",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        
        /// this is Image like [Hero]
        CachedNetworkImage(
          width: 160,
          colorBlendMode: BlendMode.plus,
          imageUrl:
              "https://1000logos.net/wp-content/uploads/2017/05/Netflix-new-logo.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),

        /// latest Icon as [Search]
        IconButton(icon: Icon(Icons.search, color: Color(0xFF333333), size: 30),onPressed: (){
          Scaffold.of(context).showSnackBar( SnackBar(
            content: Text("Not Found this is Element"),
          ) );
        })
        
      ],
    );
  }
}