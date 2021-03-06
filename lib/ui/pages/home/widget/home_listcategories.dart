import 'package:app_audio/features/bloc/bloc_categries.dart';
import 'package:app_audio/features/data/get_category_data.dart';
import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:app_audio/ui/pages/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../customs/custom_home_cardcategories.dart';

/// This is List Categories Bottom Slider Duraract
/// Custom for [Image] And [Name] And [ONPressed]

class ListCategories extends StatefulWidget {
  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  ApiDataCategoryMovie apiSlider = ApiDataCategoryMovie();

  /// This is [Bloc] that [Widget]  name is [ButtonsCategoriesCubit]
   /// This List [Categories] [ListView]
    
    CategoriesBloc category = CategoriesBloc();

  @override
  void initState() {
    context.bloc<CategoriesBloc>().add( CategoriesEvent.initial );
    super.initState();
  }
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<CategoriesBloc,List<CategoryMovie>>(
      builder: (context, state ) {
        return Container(
          height: 70,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: state.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCardCategoryHome(
                categoryMovie: state[index],
                onPressed: () {
                   /// class [WatchPage] 
                  /// [CategoryMovie] categoryMovie           
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPage(
                    categoryMovie: state[index],
                  ) ));
                },
              );
            },
          ),
        );
      },
    );
  }
}
