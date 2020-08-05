import 'package:app_audio/features/model/category_movie_model.dart';
import 'package:flutter/material.dart';
import 'package:app_audio/ui/theme/all_style.dart';

class DetailVideoAllData extends StatelessWidget {
  final CategoryMovie categoryMovie;
  final Duration length;
  DetailVideoAllData({
    Key key,
    this.categoryMovie,
    this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// Test Data ["THE NUTCRACKER AND \nTHE FOUR REALLMS\n"]

        Text(
          categoryMovie.name,
          textAlign: TextAlign.center,
          style: titleStyle,
        ),

        /// Test data ["Adventure   , Family,   Fantasy"]
        Text(categoryMovie.kind),

        /// Thsi is Side [Stars]

        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /// Test Data ["2018"]

            customDetalsColumn(first: "Year", secend: categoryMovie.year),

            /// Test Data ["USA"]
            customDetalsColumn(first: "Coutry", secend: categoryMovie.coutry),

            /// Test Data ["122 MM"] or [categoryMovie.length]
            customDetalsColumn(first: "Length", secend: length.inMinutes ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: 15, right: 15, left: 15),

          /// Test Data ["Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit, ratione nobis esse ex accusantium illo voluptatem, iusto voluptate illum ea deleniti dolore vel, sapiente soluta amet nulla reiciendis omnis! Laudantium consequuntur magnam eveniet blanditiis inventore ut deleniti error laboriosam, quisquam nostrum numquam aliquam alias porro, rerum totam! Veniam, consequatur molestias!"]
          ///
          child: Text(
            categoryMovie.description,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget customDetalsColumn({first, secend}) {
    return Column(
      children: <Widget>[
        Text(
          first,
        ),
        Text(secend, style: colStyle),
      ],
    );
  }
}
