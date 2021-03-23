import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/components/body.dart';
import 'package:furniture_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: buildAppBar(context),
        body: Body(
          product: product,
        ));
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        icon: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
    actions: [
      IconButton(
          icon: Icon(
            Icons.card_travel,
            color: Colors.black,
          ),
          onPressed: () {}),
      SizedBox(
        width: SizeConfig.defaultSize,
      )
    ],
  );
}
