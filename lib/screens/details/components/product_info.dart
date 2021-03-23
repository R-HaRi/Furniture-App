import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize *
          (SizeConfig.orientation == Orientation.landscape ? 35 : 15),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.category.toUpperCase(),
              style: lightTextStyle,
            ),
            SizedBox(height: defaultSize),
            Text(
              product.title,
              style: TextStyle(
                  fontSize: defaultSize * 2.4,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  height: 1.4),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              'Form',
              style: lightTextStyle,
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(
                  fontSize: defaultSize * 1.6,
                  fontWeight: FontWeight.bold,
                  height: 1.6),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              "Available Colors",
              style: lightTextStyle,
            ),
            Row(
              children: [
                buildColorBox(defaultSize,
                    color: Color(0xFF7BA275), isActive: true),
                buildColorBox(defaultSize, color: Color(0xFFD7D7D7)),
                buildColorBox(defaultSize, color: kTextColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}

Container buildColorBox(double defaultSize,
    {Color color, bool isActive = false}) {
  return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),

      // padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      // child: SvgPicture.asset("assets\icons\check.svg"),
      child: isActive
          ? Icon(
              Icons.check,
              color: Colors.white,
            )
          : SizedBox());
}
