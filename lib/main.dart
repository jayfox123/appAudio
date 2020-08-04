import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './ui/pages/home/home.dart';
import 'features/bloc/bloc_categries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (context) => CategoriesBloc(),
          child: Home(),
        )
    );
  }
}
