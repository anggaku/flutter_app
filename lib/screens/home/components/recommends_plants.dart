import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/details/details_screen.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_4.png",
            title: "Vas",
            country: "Indonesia",
            price: 145,
            press: (){
                Navigator.push(context, MaterialPageRoute(builder:  (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_5.png",
            title: "Oh Rosy",
            country: "Indonesia",
            price: 440,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_6.png",
            title: "Sweet Box",
            country: "Indonesia",
            price: 350,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding, 
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      // Ini akan mengambil 40% dari total Width
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          )
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price", 
                    style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}