import 'package:app_audio/ui/pages/show/widget/show_body.dart';
import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  @override
  _ShowState createState() => _ShowState();
}
class _ShowState extends State<Show> {
  final String image = "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg";
  final List<String> images = [
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/4pxPrAuWJMs/maxresdefault.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Category" , style: TextStyle( color: Colors.black ),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, size: 25), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.arrow_downward, size: 25), onPressed: () {})
        ],
      ),
      body: ShowAllWidget(images: images),
    );
  }
}

