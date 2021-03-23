import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/categories.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/home/components/categories.dart';
import 'package:furniture_app/screens/home/components/product_card.dart';
import 'package:furniture_app/screens/home/components/recommand_products.dart';
import 'package:furniture_app/services/fetch_categories.dart';
import 'package:furniture_app/services/fetch_products.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Browse by categories",
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
            Divider(height: 5),
            Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: TitleText(
                  title: "Recommands For You",
                )),
            FutureBuilder(
                future: fetchProducts(),
                builder: (context, snapshot) => snapshot.hasData
                    ? Recommand_products(products: snapshot.data)
                    : Center(child: Image.asset("assets/ripple.gif")))
          ],
        ),
      ),
    );
  }
}
