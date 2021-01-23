import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';
import 'bottom_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Oh Rosy",country: "Indonesia",price: 440),
          SizedBox(height: kDefaultPadding),
          BottomBtn(size: size),
        ],
      ),
    );
  }
}
