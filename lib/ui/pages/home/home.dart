import 'package:app_audio/features/data/get_category_data.dart';
import 'package:app_audio/ui/pages/show/show.dart';
import 'package:flutter/material.dart';
import '../home/widget/home_appbar.dart';
import '../home/widget/home_listcategories.dart';
import '../home/widget/home_slidar.dart';
import '../home/customs/custom_home_slidercategorytitle.dart';
import '../home/widget/home_subslider_category.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiDataCategoryMovie apiSlider = ApiDataCategoryMovie();

  void _showMore(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Show() ));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 40),
              HomeAppBar(), /// AppBar [AppBar]
              SizedBox(height: 30), /// Margin
              SliderLatestMovie(), /// [Slider] latest 
              SizedBox(height: 30),
              ListCategories(), /// List [Category]
              CustomSliderCategoryMovieTitle(title: "My list", onPressed: _showMore,),
              CategoryItemsMovieSliderSubCenter(),
              CustomSliderCategoryMovieTitle(title: "Popular on Netflix", onPressed: _showMore,),
              CategoryItemsMovieSliderSubCenter(),
            ],
            
          ),
        ),
      ),
    );
  }
}













