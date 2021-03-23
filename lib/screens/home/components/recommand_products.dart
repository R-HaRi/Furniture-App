import 'package:flutter/material.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/detail_screen.dart';
import 'package:furniture_app/screens/home/components/product_card.dart';
import 'package:furniture_app/size_config.dart';

class Recommand_products extends StatelessWidget {
  const Recommand_products({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.693,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              crossAxisCount:
                  SizeConfig.orientation == Orientation.portrait ? 2 : 4),
          itemBuilder: (context, index) => Product_card(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                product: products[index],
                              )));
                },
              )),
    );
  }
}
