import 'package:app_audio/features/data/get_category_data.dart';
import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CategoriesEvent{
  initial
}
/// Here Bloc to Show [Image] And [String] not Video but Buttons inInput 
/// to Page Categories within [Videos] or [Movies]
/// Now a way get Data from [ApiDataCategoryMovie] class for Type [List<CategoryMovie>]

class CategoriesBloc extends Bloc<CategoriesEvent,List<CategoryMovie>> {
  CategoriesBloc() : super([CategoryMovie(
    name: "404",
    videoUrl:"http://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_1mb.mp4",
    imageUrl: "https://image.freepik.com/free-vector/glitch-error-404-page-background_23-2148072533.jpg"
  )]);

  /// [ApiDataCategoryMovie]
  /// Event Initailaztion Change Value[State] to [List<CategoryMovie>] for Type [List]

  @override
  Stream<List<CategoryMovie>> mapEventToState(CategoriesEvent event) async* {
      switch(event){
        case CategoriesEvent.initial:
        ApiDataCategoryMovie api = ApiDataCategoryMovie();
          state.clear();
          api.allMovie.forEach((element) {
            state.add( element );
          }); 
          yield state;
      }
  }
}