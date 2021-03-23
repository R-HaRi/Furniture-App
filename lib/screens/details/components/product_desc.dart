import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/size_config.dart';

class product_desc extends StatelessWidget {
  const product_desc({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  final Function press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9, //90
        left: defaultSize * 2, //20
        right: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultSize * 1.2),
              topRight: Radius.circular(defaultSize * 1.2))),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.subTitle,
              style: TextStyle(
                  fontSize: defaultSize * 1.8, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            Text(product.description,
                style:
                    TextStyle(color: kTextColor.withOpacity(0.7), height: 1.5)),
            SizedBox(
              height: defaultSize * 3,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: press,
                style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.all(defaultSize * 1.5)),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
