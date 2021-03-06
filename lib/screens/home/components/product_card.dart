import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/size_config.dart';

class Product_card extends StatelessWidget {
  const Product_card({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
          width: defaultSize * 14.5, //145
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
          child: AspectRatio(
              aspectRatio: 0.639,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Hero(
                      tag: product.id,
                      child: FadeInImage.assetNetwork(
                          placeholder: "assets/ripple.gif",
                          image: product.image),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize),
                    child: TitleText(
                      title: product.title,
                    ),
                  ),
                  SizedBox(height: defaultSize / 2),
                  Text("\$${product.price}"),
                  Spacer()
                ],
              ))),
    );
  }
}
