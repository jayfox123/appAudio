
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WatchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WatchAppBar({
    Key key,
  }) : super(key: key);

  @override
  _WatchAppBarState createState() => _WatchAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _WatchAppBarState extends State<WatchAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      iconTheme: IconThemeData(color: Color(0xFF333333), size: 25),
      backgroundColor: Colors.white,
      title: CachedNetworkImage(
        width: 100,
        colorBlendMode: BlendMode.plus,
        imageUrl:
            "https://1000logos.net/wp-content/uploads/2017/05/Netflix-new-logo.jpg",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () {})
      ],
    );
  }
}
