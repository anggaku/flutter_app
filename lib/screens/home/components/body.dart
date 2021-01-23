import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recommends_plants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengetahui total tinggi dan lebar dari screen kita
    Size size = MediaQuery.of(context).size;
    // Mengaktifkan scrolling pada small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended Flowers",press: (){},),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Flowers",press: (){},),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,),
          TitleWithMoreBtn(title: "Judul Baru",press: (){},),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}