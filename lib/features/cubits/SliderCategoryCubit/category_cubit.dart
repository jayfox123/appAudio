import 'package:app_audio/features/data/get_category_data.dart';
import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Here Cubit to Show [Image] And [String] not Video but Buttons inInput 
/// to Page Categories within [Videos] or [Movies]
/// Now a way get Data from [ApiDataCategoryMovie] class for Type [List<CategoryMovie>]

class ButtonsCategoriesCubit extends Cubit<List<CategoryMovie>> {
  ButtonsCategoriesCubit() : super([CategoryMovie(
    name: "404",
    urlImage: "https://image.freepik.com/free-vector/glitch-error-404-page-background_23-2148072533.jpg"
  )]);
  ApiDataCategoryMovie category = ApiDataCategoryMovie();
  void fetchCategory() => emit( category.allMovie );
}

